module Transactionable
  extend ActiveSupport::Concern

  included do
    has_many :transactions, as: :originable, inverse_of: :originable
  end
end
