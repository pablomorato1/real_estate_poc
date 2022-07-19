class AddNewFieldsToProperties < ActiveRecord::Migration[7.0]
  def change
    add_column :properties, :prop_type, :string, default: 'passive'
    add_column :properties, :min_equity, :float, default: 0
    add_column :properties, :presentation_url, :string
  end
end
