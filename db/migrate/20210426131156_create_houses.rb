class CreateHouses < ActiveRecord::Migration[5.2]
  def change
    create_table :houses do |t|
      t.string :property_name
      t.integer :price
      t.string :street_address
      t.integer :age_building
      t.text :remarks

      t.timestamps
    end
  end
end
