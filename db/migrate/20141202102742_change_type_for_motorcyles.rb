class ChangeTypeForMotorcyles < ActiveRecord::Migration
  def change
    remove_column :motorcycles, :type, :string
  end
end
