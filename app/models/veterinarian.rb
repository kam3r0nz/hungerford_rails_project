class Veterinarian < ApplicationRecord
    has_many :services
    has_many :appointments
    has_many :animals, through: :appointments
end
