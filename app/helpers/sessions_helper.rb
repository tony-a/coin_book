module SessionsHelper
  def sign_in(user)
    cookies.permanent[:remember_token] = user.remember_token
    self.current_user = user
  end
  
  def signed_in?
    !current_user.nil?
  end
  
  def current_user=(user) #this one assigns the current user to the attribute @current_user
    @current_user = user
  end
  
  def current_user #this finds which user is loged on, by searching through the cookies
    @current_user ||= User.find_by_remember_token(cookies[:remember_token])
  end
end