class Property < ApplicationRecord
  include Transactionable

  has_paper_trail

  has_one_attached :image

  enum prop_type: { active: 'active', passive: 'passive' }

  has_many :property_prices, -> { order(created_at: :desc) }, dependent: :destroy

  scope :only_displayed_on_dashboard, -> { where(show_on_dashboard: true) }

  after_save :track_price

  def to_s
    "#{name} - #{address}"
  end

  def square_meter_cost
    return 0 if area.zero?
    (price / area).round(2)
  end

  private

  def track_price
    property_prices.create(price: price)
  end
end
