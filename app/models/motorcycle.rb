class Motorcycle < ActiveRecord::Base
  belongs_to :owner, class_name: "User"
  has_many :photos

  MANUFACTURERS = %w(BMW Guzzi Triumph Ducati)
  STYLES = %w(Roadster Trail Supermotard Trial Custom Sport)

  has_attached_file :picture,
    styles: { medium: "300x300>", thumb: "100x100>" }

  validates_attachment_content_type :picture,
    content_type: /\Aimage\/.*\z/
end
