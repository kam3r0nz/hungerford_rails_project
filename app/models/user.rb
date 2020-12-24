class User < ApplicationRecord
    has_many :animals
    validates :name, presence: true
    validates :email, uniqueness: true
    has_secure_password
end
