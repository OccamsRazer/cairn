class Search
  def self.text_search(profile, query)
    Query.create(:interest_profile => profile, :query => query)

    return Document.search("text:#{query}").results
  end

  def self.cairn_search(profile, query)
    Query.create(:interest_profile => profile, :query => query)

    return Document.search("text:#{query}").results
  end

end
