class RemoveColumnsFromMotorcycle < ActiveRecord::Migration
  def change
    remove_column :motorcycles, :longitude, :integer
    remove_column :motorcycles, :latitude, :integer
  end
end
