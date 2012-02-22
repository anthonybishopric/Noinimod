class Player
  
  def initialize
    @deck = []
    7.times do
      @deck << Copper.new
    end
    3.times do
      @deck << Estate.new
    end
    @deck.shuffle!
  end
  
  def hand
    @hand = []
    5.times do
      @hand << @deck.pop
    end
    @hand
  end
  
  
  
end