class AddSoldAtToInvestments < ActiveRecord::Migration[7.0]
  def change
    add_column :investments, :sold_at, :datetime, index: true
  end
end
