class Appointment < ApplicationRecord
  belongs_to :animal
  belongs_to :veterinarian
  has_many :services, through: :veterinarians
  belongs_to :service
end
