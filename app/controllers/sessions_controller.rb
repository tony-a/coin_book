class SessionsController < ApplicationController
  
  
  def index
    @hi = User.all
    
  end
  
  def new
    @bye = 'that'
  end
  
  def create
    user = User.find_by_email(params[:session][:email].downcase)
   # print user
   render 'new'
#    print 'this is the session: ', params[:session]
 #   print "this email: ", params[:session][:email]
  end
  
  def destroy
    
  end


end