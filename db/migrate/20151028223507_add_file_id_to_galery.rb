class AddFileIdToGalery < ActiveRecord::Migration
  def change
    add_column :galeries, :file_id, :string
  end
end
