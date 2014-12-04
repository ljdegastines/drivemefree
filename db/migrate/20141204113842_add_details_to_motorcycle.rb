class AddDetailsToMotorcycle < ActiveRecord::Migration
  def change
    add_column :motorcycles, :city, :string
    add_column :motorcycles, :zip_code, :integer
    add_column :motorcycles, :price_per_day, :integer
  end
end