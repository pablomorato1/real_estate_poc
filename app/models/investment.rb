class Investment < ApplicationRecord
  belongs_to :user
  belongs_to :productable, polymorphic: true
end
