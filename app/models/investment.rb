class Investment < ApplicationRecord
  belongs_to :user, inverse_of: :investments
  belongs_to :productable, polymorphic: true
end
