class Animal < ApplicationRecord
  validates :name, presence: true
  belongs_to :user
  has_many :appointments, dependent: :delete_all 
  has_many :veterinarians, through: :appointments
  has_one_attached :image
end


#animals/6/appointments/new
#v/5/apointments/new
#v/animals/4/appointments/new