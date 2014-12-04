class AddDateToAvailabilities < ActiveRecord::Migration
  def change
    add_column :availabilities, :start_date, :date
    add_column :availabilities, :end_date, :date
  end
end
