class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.references :originable, polymorphic: true, null: false, index: true
      t.references :wallet, null: false, foreign_key: true, index: true
      t.float :money_quantity, null: false
      t.string :transaction_type, null: false

      t.timestamps
    end
  end
end
