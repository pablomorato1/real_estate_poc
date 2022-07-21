class AddShowOnDashboardToProperties < ActiveRecord::Migration[7.0]
  def change
    add_column :properties, :show_on_dashboard, :boolean, default: false
  end
end
