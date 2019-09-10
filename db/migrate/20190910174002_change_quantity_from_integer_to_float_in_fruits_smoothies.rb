class ChangeQuantityFromIntegerToFloatInFruitsSmoothies < ActiveRecord::Migration[6.0]
  def up
    change_column :fruits_smoothies, :quantity, :float
  end

  def down
    change_column :fruits_smoothies, :quantity, :integer
  end
end
