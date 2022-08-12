class Transaction < ApplicationRecord
  include AASM

  belongs_to :originable, polymorphic: true
  belongs_to :wallet
  has_one :user, through: :wallet

  validates :title, :description, :money_quantity, :transaction_type, presence: true

  enum transaction_type: { deposit: 'Deposit', withdraw: 'Withdraw', passive_income: 'Passive Income', equity_purchase: 'Equity Purchase', equity_sale: 'Equity Sale'}

  aasm column: :status do
    state :on_hold, initial: true
    state :processed, :failed

    event :process do
      transitions from: :on_hold, to: :processed do
        guard do
          process_transaction
        end
      end

      transitions from: :on_hold, to: :failed
    end

    event :revert do
      transitions from: :processed, to: :on_hold do
        guard do
          revert_transaction
        end
      end

      transitions from: :on_hold, to: :failed
    end

    event :fail_process do
      transitions from: :on_hold, to: :failed
    end
  end

  private

  def process_transaction
    case self.transaction_type
    when "deposit"
      final_amount = self.wallet.money + self.money_quantity
      update_wallet_money(final_amount)
    when "withdraw"
      final_amount = self.wallet.money - self.money_quantity
      return false if final_amount < 0
      update_wallet_money(final_amount)
    else
      false
    end
  end

  def revert_transaction
    case self.transaction_type
    when "deposit"
      final_amount = self.wallet.money - self.money_quantity
      return false if final_amount < 0
      update_wallet_money(final_amount)
    when "withdraw"
      final_amount = self.wallet.money + self.money_quantity
      update_wallet_money(final_amount)
    else
      false
    end
  end

  def update_wallet_money(value)
    self.wallet.update(money: value)
  end
end
