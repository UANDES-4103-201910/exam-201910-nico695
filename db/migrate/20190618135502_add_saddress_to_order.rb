class AddSaddressToOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :saddress, :string
  end
end
