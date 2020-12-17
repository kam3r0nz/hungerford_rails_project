class User < ApplicationRecord
    has_many :animals
    has_many :appointments
    validates :name, presence: true
    validates :email, uniqueness: true
    has_secure_password
end
