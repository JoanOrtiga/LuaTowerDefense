local Actor = Actor or require "Lib/actor"
local Vector = Vector or require "Lib/vector"
local hudButton = Actor:extend()

function hudButton:new(image,x,y,speed,fx,fy, ox, oy,sx,sy)
  hudButton.super.new(self, image,x,y,speed,fx,fy,ox,oy,sx,sy)
end

function hudButton:update(dt)
end

function hudButton:draw()
  hudButton.super.draw(self)
end

function hudButton:isPressed()
  if love.mouse.isDown(1) and hudButton.intersectsMouse(self,love.mouse) then
    return true
  end
  
  return false
end

function hudButton:intersectsMouse(b)

    local ax = self.position.x
    local ay = self.position.y
    local aw = self.width * self.scale.x
    local ah = self.height * self.scale.y
    
    local bx = b.getX()
    local by = b.getY()
    local bw = 1
    local bh = 1

   if ax+aw > bx and ax < bx+bw and ay+ah > by and ay < by+bh then
        return true
    else
        return false
        
    end
end


return hudButton