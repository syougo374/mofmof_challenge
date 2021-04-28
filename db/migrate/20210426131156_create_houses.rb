class CreateHouses < ActiveRecord::Migration[5.2]
  def change
    create_table :houses do |t|
      t.string :property_name
      t.string :price
      t.string :street_address
      t.string :age_building
      t.text :remarks

      t.timestamps
    end
  end
end
