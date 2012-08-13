class Coin < ActiveRecord::Base
  attr_read :year, :coin_value, :mint_loc

  def initialize(year, coin_value, mint_loc)
    @year = year
    @coin_value = coin_value
    @mint_loc = mint_loc
  end
end
