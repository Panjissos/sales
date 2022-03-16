class CreateBatches < ActiveRecord::Migration[7.0]
  def change
    create_table :batches do |t|
      t.string :reference
      t.string :purchaseChannel
      t.belongs_to :order, index: true, foreign_key: true
      t.timestamps
    end
  end
end
