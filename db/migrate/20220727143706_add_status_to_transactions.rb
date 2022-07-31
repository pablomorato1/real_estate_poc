class AddStatusToTransactions < ActiveRecord::Migration[7.0]
  def self.up
    add_column :transactions, :status, :string
  end

  def self.down
    remove_column :transactions, :status
  end
end
