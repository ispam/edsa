class AddMoreInfo < ActiveRecord::Migration
  def change
  	add_column :galeries, :file_filename, :string
  	add_column :galeries, :file_size, :integer
  	add_column :galeries, :file_content_type, :string
  end
end
