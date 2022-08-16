class WalletController < ApplicationController
  before_action :authenticate_user!

  def index
    @transactions = current_user.transactions.processed
  end
end
