class User < ApplicationRecord
    has_many :animals
    has_secure_password
end
