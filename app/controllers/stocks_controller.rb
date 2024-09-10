class StocksController < ApplicationController
    # Ensure the user is logged in before accessing these actions
    before_action :authenticate_user!
  
  def index
    @stocks = Stock.all
  end

  def new
    @stock = Stock.new
  end
  
end
