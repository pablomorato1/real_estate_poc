class Transaction < ApplicationRecord
  include AASM

  belongs_to :originable, polymorphic: true
  belongs_to :wallet
  has_one :user, through: :wallet

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

    event :stop do
      transitions from: [:processed, :failed], to: :on_hold
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
      self.wallet.update(money: final_amount)
    when "withdraw"
      final_amount = self.wallet.money - self.money_quantity
      return false if final_amount < 0
      self.wallet.update(money: final_amount)
    else
      false
    end
  end
end
