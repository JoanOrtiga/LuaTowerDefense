local Actor = Actor or require "Lib/actor"
local Tower = Actor:extend()

function Tower:new(xTable,yTable)
  Tower.super.new(self, "Resources/sampleTowers.png",xTable * 50 + 25 ,yTable * 50 + 25)
end

function Tower:update(dt)
  
end

function Tower:draw()
  Tower.super.draw(self) 
end

return Tower

