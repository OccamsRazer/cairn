class CreateDocumentRatings < ActiveRecord::Migration
  def change
    create_table :document_ratings do |t|
      t.references :interest_profile, index: true
      t.references :document, index: true
      t.integer :rating

      t.timestamps
    end
  end
end
