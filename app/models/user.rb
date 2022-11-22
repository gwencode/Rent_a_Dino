class User < ApplicationRecord
  has_many :dinosaurs, dependent: :destroy
  has_many :bookings, dependent: :nullify
  has_many :owner_bookings, through: :dinosaurs, source: :bookings
  has_one_attached :avatar

  validates :first_name, :last_name, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
