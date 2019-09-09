class Smoothie < ApplicationRecord
    has_many :fruits_smoothies
    has_many :fruits, through: :fruits_smoothies
end
