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
    
  context "that is an action" do
    
    subject do
      class ActionCardStub < CardStub
        include Action
      end # class methods
      ActionCardStub
    end
    
   specify do
      subject.action?.should be_true
    end
    
    specify do
      subject.pile_size.should eq(10)
    end
    
  end
  
  context "that is a victory card" do
    
    subject do
      class VictoryCardStub
        include Card
        
        def victory_value
          1
        end
      end
      VictoryCardStub
    end 
    
    specify do
      subject.pile_size.should eq(8)
    end
    
  end
  
  context "pile" do
    
    subject do
      CardStub.make_pile
    end
    
    specify do
      subject.size.should eq(CardStub.pile_size)
    end
    
    specify do
      subject[0].class.should eq(CardStub)
    end

  end
  
end