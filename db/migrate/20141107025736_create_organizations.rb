class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name
      t.references :user, index: true
      t.integer :parent_organization_id, index: true

      t.timestamps
    end
  end
end
