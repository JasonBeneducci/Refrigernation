class AddQuantityToFruitsSmoothies < ActiveRecord::Migration[6.0]
  def change
    add_column :fruits_smoothies, :quantity, :integer
  end
end
