class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.integer :user_id
      t.integer :fruit_id
      t.integer :quantity
      t.timestamps
    end
  end
end
