class PropertyPrice < ApplicationRecord
  belongs_to :property, foreign_key: :property_id
end
