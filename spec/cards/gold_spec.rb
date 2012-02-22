require 'cards/gold'

describe Gold do
  
  subject do
    Gold.new
  end
  
  specify do
    subject.treasure_value.should eq(3)
  end
  
  specify do
    subject.cost.should eq(6)
  end
  
  specify do
    subject.treasure?.should be_true
  end
  
end