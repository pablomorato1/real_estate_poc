class CreateInvestment < ActiveRecord::Migration[7.0]
  def change
    create_table :investments do |t|
      t.references :user, null: false, foreign_key: true, index: true
      t.references :productable, polymorphic: true, null: false, index: true
      t.float :value, default: 0
      t.float :product_equity, default: 0

      t.timestamps
    end
  end
end
