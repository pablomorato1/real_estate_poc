class Property < ApplicationRecord
  has_paper_trail

  has_many :property_prices, -> { order(created_at: :desc) }, dependent: :destroy

  after_save :track_price

  private

  def track_price
    property_prices.create(price: price)
  end
end
