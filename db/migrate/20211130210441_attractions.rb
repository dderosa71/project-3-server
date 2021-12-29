class Attractions < ActiveRecord::Migration[6.1]
  def change
    create_table :attractions do |t|
      t.string :name
      t.string :attraction_type
      t.date :visited
      t.string :notes
      t.integer :location_id
      t.timestamps
    end
  end
end
