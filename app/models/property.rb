class Property < ApplicationRecord
  has_paper_trail

  has_many :property_prices, -> { order(created_at: :desc) }, dependent: :destroy

  after_save :track_price

  def square_meter_cost
    return 0 if area.zero?
    (price / area).round(2)
  end

  private

  def track_price
    property_prices.create(price: price)
  end
end
