class PortfolioController < ApplicationController
  before_action :authenticate_user!

  def index
    @properties = Property.all.order(created_at: :asc)
    @active_assets = Property.joins(:investments).where(investments: { sold_at: nil }).order(created_at: :asc)
    @archived_assets = Property.joins(:investments).where.not(investments: { sold_at: nil }).order(created_at: :asc)
  end
end
