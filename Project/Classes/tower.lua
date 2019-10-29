local Actor = Actor or require "Lib/actor"
local Tower = Actor:extend()

function Tower:new()
  Tower.super.new(self, "Resources/abc.png",400,500,20,1,0)
  
  print(Tower.super.getPosition(self))

  
end

function Tower:update(dt)
  
end

function Tower:draw()
  Tower.super.draw(self)
end

return Tower

