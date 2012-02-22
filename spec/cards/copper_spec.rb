require 'cards/copper'

describe Copper do
  
  specify do
    subject.treasure_value.should eq(1)
  end
  
  specify do
    subject.cost.should eq(0)
  end
  
  specify do
    subject.treasure?.should be_true
  end
  
end

=begin

<?php
// phpunit

// Copper.php - simulates the Copper card from Dominion
class Copper
{
  public function treasure_value()
  {
    if(Coppersmith::played())
    {
      return 2;
    }
    return 1;
  }
}

// Copper_Test.php

$t->describe(Copper, function($t){
  
  $t->it("has a treasure value of 1", function($copper, $t){
      $copper->treasure_value()->should($t->eq(1));      
  });
  
  $t->context("Coppersmith played", function($t){
    
    $t->before(function($t){
      $coppersmith = new Coppersmith();
      $coppersmith->play();
    });
    
    $t->it("has a treasure value of 2", function($copper, $t){
      $copper->treasure_value()->should($t->eq(2));
    });
    
  });

});

=end