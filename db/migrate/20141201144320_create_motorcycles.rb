class CreateMotorcycles < ActiveRecord::Migration
  def change
    create_table :motorcycles do |t|
      t.references :owner, index: true
      t.string :manufacturer
      t.string :model
      t.string :type
      t.integer :production_year
      t.integer :engine_size
      t.string :engine_type
      t.integer :horsepower
      t.string :license_plate
      t.text :description
      t.string :pickup_address
      t.integer :longitude
      t.integer :latitude
      t.integer :autonomy_km

      t.timestamps
    end
  end
end
