module Card
  
  # required to implement:
  
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
    @is_action
  end
  
  def action
    action?
  end
  
  def is_action(is_action)
    @is_action = is_action
  end
  
end