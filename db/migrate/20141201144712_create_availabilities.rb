class CreateAvailabilities < ActiveRecord::Migration
  def change
    create_table :availabilities do |t|
      t.references :motorcycle, index: true
      t.date :date
      t.boolean :is_available
      t.integer :price
      t.string :currency

      t.timestamps
    end
  end
end
