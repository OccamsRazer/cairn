class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.text :text
      t.string :docno

      t.timestamps
    end
  end
end
