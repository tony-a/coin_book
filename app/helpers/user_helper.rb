module UserHelper
  
  def fetch
    return 'test'
    SessionsHelper.current_user
  end
  
end
