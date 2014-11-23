class CreateProfileOrganizations < ActiveRecord::Migration
  def change
    create_table :profile_organizations do |t|
      t.references :interest_profile, index: true
      t.references :organization, index: true

      t.timestamps
    end
  end
end
