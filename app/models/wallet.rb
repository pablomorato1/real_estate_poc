class Wallet < ApplicationRecord
  has_paper_trail limit: nil

  belongs_to :user, inverse_of: :wallet
end
