class AddCoordsToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :from_address_lat, :float
    add_column :orders, :from_address_lon, :float
    add_column :orders, :to_address_lat, :float
    add_column :orders, :to_address_lon, :float
  end
end
