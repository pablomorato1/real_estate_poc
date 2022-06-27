class AddManagedEquityToProperty < ActiveRecord::Migration[7.0]
  def change
    add_column :properties, :managed_equity, :float, default: 100.0
  end
end
