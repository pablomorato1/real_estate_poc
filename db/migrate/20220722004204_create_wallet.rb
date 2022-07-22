class CreateWallet < ActiveRecord::Migration[7.0]
  def up
    create_table :wallets do |t|
      t.references :user, null: false, foreign_key: true, index: true
      t.float :money, default: 0, index: true

      t.timestamps
    end

    User.where.missing(:wallet).each do |user|
      user.wallet = Wallet.create
    end
  end

  def down
    # raise IrreversibleMigration
  end
end
