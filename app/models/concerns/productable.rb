module Productable
  extend ActiveSupport::Concern

  included do
    has_many :investments, as: :productable, inverse_of: :productable
  end
end
