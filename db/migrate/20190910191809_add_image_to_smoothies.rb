class AddImageToSmoothies < ActiveRecord::Migration[6.0]
  def change
    add_column :smoothies, :image, :string
  end
end
