require 'game'

describe Game do
  
  it "has 10 variable card piles" do
    subject.piles.size.should eq(10)
  end
  
  it "has standard victory piles by default" do
    subject.provinces_remain?.should be_true
    subject.colonies_remain?.should be_false
  end
  
  it "has standard treasure piles by default" do
    subject.golds_remain?.should be_true
    subject.platinums_remain?.should be_false
  end
  
end