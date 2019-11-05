local Actor = Actor or require "Lib/actor"
local Background = Actor:extend()

function Background:new()
  Background.super.new(self, "Resources/map1.jpeg",0,0,nil,nil,nil,0,0)
  --image,x,y,speed,fx,fy, ox, oy, sx,sy
end

function Background:update(dt)
  
end

function Background:draw()
  Background.super.draw(self)
end

return Background