class Appointment < ApplicationRecord
  validates :date, presence: true
  belongs_to :user
  belongs_to :animal
  belongs_to :veterinarian
  has_many :services, through: :veterinarians
  belongs_to :service

  scope :ascending, -> { order(date: :asc) }
end