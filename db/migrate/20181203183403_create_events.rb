class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.string :location
      t.string :time
      t.integer :designer_id
      t.timestamps
    end
  end
end
