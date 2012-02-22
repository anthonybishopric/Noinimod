require 'game'

describe Game do
  
  game = Game.new
  it "has 10 variable card piles" do
    game.piles.size.should eq(10)
  end
  
end