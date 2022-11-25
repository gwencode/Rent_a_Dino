class Dinosaur < ApplicationRecord
  belongs_to :owner, class_name: "User", foreign_key: :user_id
  has_many :bookings, dependent: :nullify
  has_many_attached :photos

  validates :address, :name, :species, :price_per_day, :photos, presence: true
  validates :description, length: { minimum: 6 }

  SPECIES = %i[Tyrannosaur Diplodocus Stegosaur Allosaur Velociraptor Galliminus Triceratops Archeopteryx Spinosaur Pterodactyl]

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
