class AddStyleToMotorcycles < ActiveRecord::Migration
  def change
    add_column :motorcycles, :style, :string
  end
end
