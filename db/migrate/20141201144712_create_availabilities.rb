class CreateAvailabilities < ActiveRecord::Migration
  def change
    create_table :availabilities do |t|
      t.references :motorcycle, index: true
      t.date :start_date
      t.date :end_date
      t.boolean :is_available

      t.timestamps
    end
  end
end
