local HudButton = HudButton or require "Classes/HUD/hudButton"
BuyTower1 = HudButton:extend()

function BuyTower1:new()
  BuyTower1.super.new(self, "Resources/sampleTowers.png", 805,4, nil, nil, nil, 0,0,2.11,2.11)
  
  print(self.position.x)
end

function BuyTower1:update(dt)
  BuyTower1.super.isPressed(self)
end

function BuyTower1:draw()
  BuyTower1.super.draw(self)
end


return BuyTower1