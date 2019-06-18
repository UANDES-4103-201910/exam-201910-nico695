class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.integer :phone
      t.string :adressl1
      t.string :adressl2
      t.string :city
      t.string :country
      t.integer :zip

      t.timestamps
    end
  end
end
