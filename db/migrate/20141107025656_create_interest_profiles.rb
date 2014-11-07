class CreateInterestProfiles < ActiveRecord::Migration
  def change
    create_table :interest_profiles do |t|
      t.string :name
      t.references :user, index: true

      t.timestamps
    end
  end
end
