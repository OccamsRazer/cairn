class CreateTopicInterests < ActiveRecord::Migration
  def change
    create_table :topic_interests do |t|
      t.string :name
      t.integer :parent_topic_interest_id, index: true

      t.timestamps
    end
  end
end
