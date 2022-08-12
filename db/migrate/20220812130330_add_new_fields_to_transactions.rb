class AddNewFieldsToTransactions < ActiveRecord::Migration[7.0]
  def change
    add_column :transactions, :title, :string
    add_column :transactions, :description, :string
    add_column :transactions, :annual_percentage, :float
    add_column :transactions, :report_url, :string
  end
end
