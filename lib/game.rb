require 'card.rb'

class Game
  
  def initialize()
    @piles = []
    @victory_piles = [
      Estate.make_pile,
      Duchy.make_pile,
      Province.make_pile
    ]
    @treasure_piles = [
      Copper.make_pile,
      Silver.make_pile,
      Gold.make_pile
    ]
  end
  
  def method_missing(symbol, *args)
    remain_check = /(.+)\_remain?/.match(symbol)
    if remain_check
      pile = remain_check[1].upcase
    end
  end
  
end

all_card_requires = [ 
  'Estate',
  'Duchy',
  'Province',
  'Colony',
  'Copper',
  'Silver',
  'Gold',
  'Platinum'
]


all_card_requires.each do |card|
  require "cards/#{card.downcase!}.rb"
end