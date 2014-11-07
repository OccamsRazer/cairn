class CreateLocationInterests < ActiveRecord::Migration
  def change
    create_table :location_interests do |t|
      t.string :name
      t.references :interest_profile, index: true
      t.integer :parent_location_interest_id, index: true

      t.timestamps
    end
  end
end
