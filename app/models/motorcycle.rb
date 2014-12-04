class Motorcycle < ActiveRecord::Base
  belongs_to :owner, class_name: "User"
  has_many :photos

  MANUFACTURERS = %w(BMW Ducati Guzzi Honda Kawasaki Suzuki Triumph Yamaha)
  STYLES = %w(Roadster Trail Supermotard Trial Custom Sport)

end
