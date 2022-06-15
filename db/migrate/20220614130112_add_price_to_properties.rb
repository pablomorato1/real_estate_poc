class AddPriceToProperties < ActiveRecord::Migration[7.0]
  def change
    add_column :properties, :price, :float, default: 0
  end
end
