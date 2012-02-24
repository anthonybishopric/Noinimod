module Action
  
  def self.included(base)
    base.extend(ClassMethods)
  end
  
  module ClassMethods
  
    def action?
      true
    end

    def pile_size
      10
    end
    
  end
  
  
end