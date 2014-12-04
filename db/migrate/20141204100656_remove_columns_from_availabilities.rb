class RemoveColumnsFromAvailabilities < ActiveRecord::Migration
  def change
    remove_column :availabilities, :date, :date
    remove_column :availabilities, :price, :integer
    remove_column :availabilities, :currency, :string
    remove_column :availabilities, :is_available, :boolean
  end
end
