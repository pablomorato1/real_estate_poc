class Share < ApplicationRecord
  include Productable

  belongs_to :property, foreign_key: :property_id
end
