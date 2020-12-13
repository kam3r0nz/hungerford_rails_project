class Animal < ApplicationRecord
  belongs_to :user
  has_many :appointments
  has_many :veterinarian, through: :appointments
  has_one_attached :image
end
