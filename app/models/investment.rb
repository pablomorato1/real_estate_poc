class Investment < ApplicationRecord
  include Transactionable

  belongs_to :user, inverse_of: :investments
  belongs_to :productable, polymorphic: true

  def to_s
    productable.present? ?
      "#{user.name} - #{productable.name} - #{value}" :
      "#{user.name} - #{value}"
  end
end
