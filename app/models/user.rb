class User < ApplicationRecord
    has_many :items
    has_many :fruits, through: :items
    has_secure_password

    validates :name, :username, :password, presence: true
    validates :username, uniqueness: true

end
