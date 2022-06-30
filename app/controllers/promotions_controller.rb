class PromotionsController < ApplicationController
  before_action :authenticate_user!

  def index
    @promotions = Property.all.order(created_at: :desc)
    # @tweet = Property.new
  end
end
