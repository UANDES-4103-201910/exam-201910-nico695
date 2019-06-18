class AddScToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :sc, :boolean
  end
end
