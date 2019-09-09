class AddImageToFruits < ActiveRecord::Migration[6.0]
  def change
    add_column :fruits, :image, :string
  end
end
