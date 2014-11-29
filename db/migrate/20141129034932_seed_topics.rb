class SeedTopics < ActiveRecord::Migration
  def change
    parent = TopicInterest.create(:name => 'Arts & Humanities')
    TopicInterest.create(:name => 'Photography', :parent => parent)
    TopicInterest.create(:name => 'History', :parent => parent)
    TopicInterest.create(:name => 'Literature', :parent => parent)

    parent = TopicInterest.create(:name => 'News & Media')
    TopicInterest.create(:name => 'Newspapers', :parent => parent)
    TopicInterest.create(:name => 'Radio', :parent => parent)
    TopicInterest.create(:name => 'Weather', :parent => parent)
    TopicInterest.create(:name => 'Blogs', :parent => parent)

    parent = TopicInterest.create(:name => 'Business & Economy')
    TopicInterest.create(:name => 'B2B', :parent => parent)
    TopicInterest.create(:name => 'Finance', :parent => parent)
    TopicInterest.create(:name => 'Shopping', :parent => parent)
    TopicInterest.create(:name => 'Jobs', :parent => parent)

    parent = TopicInterest.create(:name => 'Recreation & Sports')
    TopicInterest.create(:name => 'Sports', :parent => parent)
    TopicInterest.create(:name => 'Travel', :parent => parent)
    TopicInterest.create(:name => 'Autos', :parent => parent)
    TopicInterest.create(:name => 'Outdoors', :parent => parent)

    parent = TopicInterest.create(:name => 'Computer & Internet')
    TopicInterest.create(:name => 'Hardware', :parent => parent)
    TopicInterest.create(:name => 'Software', :parent => parent)
    TopicInterest.create(:name => 'Web', :parent => parent)
    TopicInterest.create(:name => 'Games', :parent => parent)

    parent = TopicInterest.create(:name => 'Reference')
    TopicInterest.create(:name => 'Phone Numbers', :parent => parent)
    TopicInterest.create(:name => 'Dictionaries', :parent => parent)
    TopicInterest.create(:name => 'Quotes', :parent => parent)

    parent = TopicInterest.create(:name => 'Education')
    TopicInterest.create(:name => 'Colleges', :parent => parent)
    TopicInterest.create(:name => 'K-12', :parent => parent)
    TopicInterest.create(:name => 'Distance Learning', :parent => parent)

    parent = TopicInterest.create(:name => 'Regional')
    TopicInterest.create(:name => 'Countries', :parent => parent)
    TopicInterest.create(:name => 'Regions', :parent => parent)
    TopicInterest.create(:name => 'U.S. States', :parent => parent)

    parent = TopicInterest.create(:name => 'Entertainment')
    TopicInterest.create(:name => 'Movies', :parent => parent)
    TopicInterest.create(:name => 'TV Shows', :parent => parent)
    TopicInterest.create(:name => 'Music', :parent => parent)
    TopicInterest.create(:name => 'Humor', :parent => parent)

    parent = TopicInterest.create(:name => 'Science')
    TopicInterest.create(:name => 'Animals', :parent => parent)
    TopicInterest.create(:name => 'Astronomy', :parent => parent)
    TopicInterest.create(:name => 'Earth Science', :parent => parent)

    parent = TopicInterest.create(:name => 'Government')
    TopicInterest.create(:name => 'Elections', :parent => parent)
    TopicInterest.create(:name => 'Military', :parent => parent)
    TopicInterest.create(:name => 'Law', :parent => parent)
    TopicInterest.create(:name => 'Taxes', :parent => parent)

    parent = TopicInterest.create(:name => 'Social Science')
    TopicInterest.create(:name => 'Languages', :parent => parent)
    TopicInterest.create(:name => 'Archaeology', :parent => parent)
    TopicInterest.create(:name => 'Psychology', :parent => parent)

    parent = TopicInterest.create(:name => 'Health')
    TopicInterest.create(:name => 'Disease', :parent => parent)
    TopicInterest.create(:name => 'Drugs', :parent => parent)
    TopicInterest.create(:name => 'Fitness', :parent => parent)
    TopicInterest.create(:name => 'Nutrition', :parent => parent)

    parent = TopicInterest.create(:name => 'Society & Culture')
    TopicInterest.create(:name => 'Sexuality', :parent => parent)
    TopicInterest.create(:name => 'Religion', :parent => parent)
    TopicInterest.create(:name => 'Food & Drink', :parent => parent)
  end
end
