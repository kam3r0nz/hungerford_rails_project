class Appointment < ApplicationRecord
  belongs_to :animal
  belongs_to :veterinarian
end
