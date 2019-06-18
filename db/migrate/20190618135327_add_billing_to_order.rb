class AddBillingToOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :billing, :integer
  end
end
