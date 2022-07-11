class AddMiniminInvestmentToProperties < ActiveRecord::Migration[7.0]
  def change
    add_column :properties, :min_investment, :float, default: 0
  end
end
