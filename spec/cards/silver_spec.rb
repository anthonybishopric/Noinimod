require 'cards/silver'

describe Silver do
  
  specify do
    subject.treasure_value.should eq(2)
  end
  
  specify do
    subject.cost.should eq(3)
  end
  
  specify do
    subject.treasure?.should be_true
  end
  
end