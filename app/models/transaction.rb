class Transaction < ApplicationRecord
  has_paper_trail limit: nil
  include AASM

  belongs_to :originable, polymorphic: true, optional: true
  belongs_to :wallet
  has_one :user, through: :wallet

  validates :title, :money_quantity, :transaction_type, presence: true

  enum transaction_type: { deposit: 'Deposit', withdraw: 'Withdraw', passive_income: 'Passive Income',
                           equity_purchase: 'Equity Purchase', equity_sale: 'Equity Sale' }

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

    event :revert_fail do
      transitions from: :failed, to: :on_hold
    end
  end

  private
  # This should be migrated to a service
  def process_transaction
    case transaction_type
    when 'deposit'
      final_amount = wallet.money + money_quantity
      update_wallet_money(final_amount)
    when 'withdraw'
      subtract_money
    when 'equity_purchase'
      subtract_money
      create_investment
    when 'equity_sale'
      return false unless originable.instance_of?(Investment)
      final_amount = wallet.money + money_quantity
      update_wallet_money(final_amount)
      originable.update(sold_at: Time.now)
    else
      false
    end
  end

  def revert_transaction
    case transaction_type
    when 'deposit'
      subtract_money
    when 'withdraw'
      final_amount = wallet.money + money_quantity
      update_wallet_money(final_amount)
    else
      false
    end
  end

  def update_wallet_money(value)
    wallet.update(money: value)
  end

  def subtract_money
    final_amount = wallet.money - money_quantity
    return false if final_amount.negative?

    update_wallet_money(final_amount)
  end

  def create_investment
    user.investments.create(productable: originable, value: money_quantity, product_equity: ((originable.min_investment/originable.price*100).round(2)))
  end
end
