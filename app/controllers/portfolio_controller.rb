class PortfolioController < ApplicationController
  before_action :authenticate_user!

  def index
    @active_assets = []
    @achieved_assets = []
  end

end
