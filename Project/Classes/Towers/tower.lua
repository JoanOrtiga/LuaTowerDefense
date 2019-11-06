local Actor = Actor or require "Lib/actor"
local Tower = Actor:extend()

function Tower:new(image, xTable,yTable, cost, radius)
  Tower.super.new(self, image or "Resources/sampleTowers.png",xTable * 50 - 50 + 25,yTable * 50 - 50 + 25)
  self.cost = cost or 20;
  self.radius = radius or 50
end

function Tower:update(dt)
  
end

function Tower:draw()
  Tower.super.draw(self) 
end

function Tower:findEnemy(circleB)
  local dist = (self.position.x - circleB.x)^2 + (self.position.y - circleB.y)^2
  return dist <= (self.radius.radius + 15)^2
end

return Tower