require 'cards/duchy'

describe Duchy do
  
  specify do
    subject.victory?.should be_true
  end
  
  specify do
    subject.cost.should eq(5)
  end
  
  specify do
    subject.victory_value.should eq(3)
  end
  
end