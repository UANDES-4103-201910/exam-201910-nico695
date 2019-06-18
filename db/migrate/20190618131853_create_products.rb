class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :pmethod
      t.string :brand
      t.string :model
      t.string :variant
      t.integer :price
      t.string :sdescription
      t.text :ldescription

      t.timestamps
    end
  end
end
