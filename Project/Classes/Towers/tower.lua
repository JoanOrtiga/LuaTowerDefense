local Actor = Actor or require "Lib/actor"
local Tower = Actor:extend()

function Tower:new(image, xTable,yTable, cost)
  Tower.super.new(self, image or "Resources/sampleTowers.png",xTable * 50 - 50 + 25,yTable * 50 - 50 + 25)
  self.cost = cost or 20;
end

function Tower:update(dt)
  
end

function Tower:draw()
  Tower.super.draw(self) 
end

return Tower