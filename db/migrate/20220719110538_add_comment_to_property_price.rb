class AddCommentToPropertyPrice < ActiveRecord::Migration[7.0]
  def change
    add_column :property_prices, :comment, :text
  end
end
