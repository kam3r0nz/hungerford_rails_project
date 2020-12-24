class Veterinarian < ApplicationRecord
    has_many :services
    has_many :appointments, dependent: :delete_all
    has_many :animals, through: :appointments
    validates :name, presence: true
end
