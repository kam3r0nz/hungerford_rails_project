class Animal < ApplicationRecord
  belongs_to :user
  has_many :appointments, through: :veterinarian
end
