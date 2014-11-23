class CreateProfileTopics < ActiveRecord::Migration
  def change
    create_table :profile_topics do |t|
      t.references :interest_profile, index: true
      t.references :topic_interest, index: true

      t.timestamps
    end
  end
end
