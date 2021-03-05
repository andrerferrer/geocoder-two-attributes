class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :from_address
      t.string :to_address
      t.string :product

      t.timestamps
    end
  end
end
