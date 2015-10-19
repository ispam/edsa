class CreateJoinTableDocumentCategory < ActiveRecord::Migration
  def change
    create_join_table :documents, :categories do |t|
      # t.index [:document_id, :category_id]
      # t.index [:category_id, :document_id]
    end
  end
end
