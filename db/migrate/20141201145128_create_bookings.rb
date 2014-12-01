class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.references :user, index: true
      t.references :motorcycle, index: true
      t.date :pickup_date
      t.time :pickup_time
      t.date :return_date
      t.time :return_time
      t.integer :total_price
      t.integer :rating_motorcycle
      t.text :review_motorcycle
      t.integer :rating_user
      t.text :review_user

      t.timestamps
    end
  end
end
