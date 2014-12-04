class AddCoordinatesToMotorcycle < ActiveRecord::Migration
  def change
    add_column :motorcycles, :latitude, :float
    add_column :motorcycles, :longitude, :float
  end
end
