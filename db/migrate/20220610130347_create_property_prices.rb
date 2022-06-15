class CreatePropertyPrices < ActiveRecord::Migration[7.0]
  def change
    create_table :property_prices do |t|
      t.float :price
      t.references :property, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
