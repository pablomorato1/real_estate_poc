class CreateProperty < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.float :area, default: 0
      t.string :yield_plan, null: false
      t.string :image

      t.timestamps
    end
  end
end
