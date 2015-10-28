class CreateGaleries < ActiveRecord::Migration
  def change
    create_table :galeries do |t|

      t.timestamps null: false
    end
  end
end
