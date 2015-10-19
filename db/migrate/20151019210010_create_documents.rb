class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :file_id
      t.string :file_filename
      t.integer :file_size
      t.string :file_content_type
      t.string :title

      t.timestamps null: false
    end
  end
end
