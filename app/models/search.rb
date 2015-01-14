class Search
  def self.text_search(profile, query, page = 1, skip_query_creation = false)
    Query.create(:interest_profile => profile, :query => query) unless skip_query_creation

    return Document.search("text:#{query}").page(page).per_page(10).results
  end

  def self.cairn_search(profile, query, page = 1, skip_query_creation = false, predicted_weight = 0.7)
    Query.create(:interest_profile => profile, :query => query) unless skip_query_creation

    docs = Document.search("text:#{query}").page(page).per_page(10).results

    predicted_scores = {}

    docs.each do |document|
      ratings = DocumentRating.where('interest_profile_id != ? AND document_id = ?', profile.id, document.id)
      score = 0
      sim_score_sum = 0
      ratings.each do |rating|
        sim_score = profile.similarity_score(rating.interest_profile)
        score += rating.rating*sim_score
        sim_score_sum += sim_score
      end
      predicted_scores[document.id] = 0
      predicted_scores[document.id] = score / sim_score_sum unless sim_score_sum == 0
    end

    docs.sort_by{|x| x._score*( 1 - predicted_weight ) + predicted_scores[x.id]*( predicted_weight )}.reverse
  end

end
