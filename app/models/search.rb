class Search
  def self.text_search(profile, query, page = 1, skip_query_creation = false)
    Query.create(:interest_profile => profile, :query => query) unless skip_query_creation

    return Document.search("text:#{query}").page(page).per_page(10).results
  end

  def self.cairn_search(profile, query, page = 1, skip_query_creation = false)
    Query.create(:interest_profile => profile, :query => query) unless skip_query_creation

    return Document.search("text:#{query}").page(page).per_page(10).results
  end

end
