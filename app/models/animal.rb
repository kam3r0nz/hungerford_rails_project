class Animal < ApplicationRecord
  validates :name, presence: true
  belongs_to :user
  has_many :appointments, through: :veterinarians
  has_many :veterinarian, through: :appointments
  has_one_attached :image
end
