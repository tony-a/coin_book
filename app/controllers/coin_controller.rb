class CoinController < ApplicationController
  
  attr_accessor :mint_options
  def index
  #  @mint_options = ["(P) Philadelphia", "(S) San Francisco", "(D) Denver"]
    @users = User.find_by_email('askar.b.tony@gmail.com')

    @coins = Coin.all
   
  end
  
  
  def new
    new_coin = {}
    new_coin[:year] = params[:year]
    new_coin[:face_value] = params[:face_value]
    
    flash[:success] = "Coin submitted :)"
    render :json => {}
  end
  
  
end
