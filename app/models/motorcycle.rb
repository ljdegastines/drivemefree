class Motorcycle < ActiveRecord::Base
  belongs_to :owner, class_name: "User"
  has_many :photos

  geocoded_by :pickup_address
  after_validation :geocode, if: :pickup_address_changed?

  MANUFACTURERS = %w(BMW Ducati Guzzi Honda Kawasaki Suzuki Triumph Yamaha)
  STYLES = %w(Roadster Trail Supermotard Trial Custom Sport)

  validates_presence_of :manufacturer ,:model, :production_year, :engine_size, :engine_type, :horsepower, :license_plate, :pickup_address, :style, :city, :zip_code, :price_per_day

end
