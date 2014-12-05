class Booking < ActiveRecord::Base
  belongs_to :user
  belongs_to :motorcycle
  validates_presence_of :user_id, :motorcycle_id, :pickup_date, :return_date
end
