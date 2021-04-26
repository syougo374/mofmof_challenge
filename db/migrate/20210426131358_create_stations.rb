class CreateStations < ActiveRecord::Migration[5.2]
  def change
    create_table :stations do |t|
      t.string :route_name
      t.string :station_name
      t.time :minutes_on_foot
      t.references :house, foreign_key: true

      t.timestamps
    end
  end
end
