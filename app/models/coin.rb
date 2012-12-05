# == Schema Information
#
# Table name: coins
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Coin < ActiveRecord::Base
  attr_reader :year, :coin_value, :mint_loc

  def initialize(year, coin_value, mint_loc)
    @year = year
    @coin_value = coin_value
    @mint_loc = mint_loc
  end
end
