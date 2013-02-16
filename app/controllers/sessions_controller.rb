class SessionsController < ApplicationController
  

  def new
    
  end
  
  def create
    user = User.find_by_email(params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      sign_in user
      redirect_to '/coin'
    else
      flash.now[:error] = "wrong email/password combo :("
      render 'new'
    end
  end
  
  def destroy
    
  end


end