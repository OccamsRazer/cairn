class CreateProfileLocations < ActiveRecord::Migration
  def change
    create_table :profile_locations do |t|
      t.references :interest_profile, index: true
      t.references :location_interest, index: true

      t.timestamps
    end
  end
end
