class CreateShares < ActiveRecord::Migration[7.0]
  def change
    create_table :shares do |t|
      t.references :property, null: false, foreign_key: true, index: true
      t.float :equity, default: 0
      t.string :planned_yield, default: ''
      t.float :price, default: 0

      t.timestamps
    end
  end
end
