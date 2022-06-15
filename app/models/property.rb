class Property < ApplicationRecord
  has_paper_trail

  has_many :property_prices, -> { order(created_at: :desc) }, dependent: :destroy
  has_many :shares, dependent: :destroy

  before_save :track_price

  private

  def track_price
    return unless changes.keys.include? 'price'

    property_prices.create(price: price)
  end
end
