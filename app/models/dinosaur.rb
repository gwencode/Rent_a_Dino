class Dinosaur < ApplicationRecord
  belongs_to :owner, class_name: "User", foreign_key: :user_id
  has_many :bookings, dependent: :nullify
  has_many_attached :photos

  validates :address, :name, :species, :price_per_day, presence: true
  validates :description, length: { minimum: 6 }
end
