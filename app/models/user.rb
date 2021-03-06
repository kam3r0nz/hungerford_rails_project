class User < ApplicationRecord
    has_many :animals, dependent: :delete_all
    has_many :appointments
    validates :name, presence: true
    validates :email, presence: true, uniqueness: true
    has_secure_password
end
