class ChangeQuantityFromIntegerToFloatInItems < ActiveRecord::Migration[6.0]
  def up
    change_column :items, :quantity, :float
  end

  def down
    change_column :items, :quantity, :integer
  end
end
