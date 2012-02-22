require 'card'

class CardStub
  include Card
end

describe Card do
  
  subject do
    CardStub.new
  end
  
  it "has a cost" do
    subject.cost.should be >=0
  end
  
  it "can be a treasure" do
    subject.treasure?.should be_false
  end
  
  it "can be an action" do
    subject.action?.should be_false
  end
  
  it "can be a victory card" do
    subject.victory?.should be_false
  end
  
  it "can indicate how valuable it is as a treasure" do
    subject.treasure_value.should eq(0)
  end
  
  it "can indicate how many victory points it provides" do
    subject.victory_value.should eq(0)
  end
  
  it "cannot be played if it is not an action" do
    subject.action.should be_false
  end
  
  context "that is an action" do
    
    before do
      subject.is_action(true)
    end
    
    it "can be played" do
      subject.action.should be_true
    end
    
    it "has a pile size of 10" do
      subject.pile_size.should eq(10)
    end
    
  end
  
  context "that is a victory card" do
    
    before do
      
    end
    
  end
  
end