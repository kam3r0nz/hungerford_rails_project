class User < ApplicationRecord
    has_many :animals, dependent: :delete_all
    validates :name, presence: true
    validates :email, uniqueness: true
    has_secure_password
end
