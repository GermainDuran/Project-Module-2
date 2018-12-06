class AddColumnToDesigner < ActiveRecord::Migration[5.2]
  def change
    add_column :designers, :img_url, :string
  end
end
