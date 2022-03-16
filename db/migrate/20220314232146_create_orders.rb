class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :reference, null: false
      t.string :purchaseChannel, null: false
      t.string :clientName, null: false
      t.string :adress, null: false
      t.string :delivery, null: false
      t.float :totalValue, null: false
      t.string :lineItems, null: false
      t.string :status, null: false
      t.timestamps
    end
  end
end
