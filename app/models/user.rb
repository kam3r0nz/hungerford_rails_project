class User < ApplicationRecord
    has_many :animals
    has_many :appointments
    has_secure_password
end
