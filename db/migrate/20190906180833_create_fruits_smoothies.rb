class CreateFruitsSmoothies < ActiveRecord::Migration[6.0]
  def change
    create_table :fruits_smoothies do |t|
      t.integer :fruit_id
      t.integer :smoothie_id
      t.timestamps
    end
  end
end
