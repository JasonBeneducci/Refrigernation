class Item < ApplicationRecord
    belongs_to :fruit
    belongs_to :user

    validates :quantity, numericality: {greater_than: 0}
end
