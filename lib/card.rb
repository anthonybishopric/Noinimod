require 'Action'

module Card
  
  def cost
    0
  end
  
  def treasure?
    treasure_value != 0
  end
  
  def victory?
    victory_value != 0
  end
  
  def treasure_value
    0
  end
  
  def victory_value
    0
  end
  
  def action?
    false
  end
  
  def self.included(base)
    base.extend(ClassMethods)
  end
  
  module ClassMethods

    def pile_size
      8
    end
    
    def make_pile
      pile = []
      pile_size.times do 
        pile << self.new
      end
      pile
    end
    
  end
  
end

