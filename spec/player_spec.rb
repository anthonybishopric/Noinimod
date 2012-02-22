require 'player'

describe Player do
  player = Player.new
  
  it "starts a hand with five cards" do
    cards = player.hand
    cards.size.should eq(5);  
  end
  
  
  
end