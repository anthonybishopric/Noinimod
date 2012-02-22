require 'cards/estate'

describe Estate do
  
  specify do
    subject.victory?.should be_true
  end
  
  specify do
    subject.cost.should eq(2)
  end
  
  specify do
    subject.victory_value.should eq(1)
  end
  
end