class CreateQueries < ActiveRecord::Migration
  def change
    create_table :queries do |t|
      t.references :interest_profile, index: true
      t.string :query

      t.timestamps
    end
  end
end
