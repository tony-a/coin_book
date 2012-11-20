class User < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_reader :email, :password, :name
  has_secure_password

  before_save :create_cookie

  private
  def create_cookie
  end
    
end
