class Service < ApplicationRecord
  belongs_to :veterinarian
  belongs_to :appointments
end
