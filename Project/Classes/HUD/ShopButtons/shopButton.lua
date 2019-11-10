local HUDB = HUDB or require "Classes/HUD/HUDButtons"
local Vector = Vector or require "Lib/vector"
local shopButton = HUDB:extend()

function shopButton:new(image,x,y,speed,fx,fy, ox, oy,sx,sy)
  shopButton.super.new(self, image,x,y,speed,fx,fy,ox,oy,sx,sy)
end

function shopButton:update(dt)
end

function shopButton:draw()
  shopButton.super.draw(self)  
end

function shopButton:isPressed()
  return  shopButton.super.isPressed(self)
end

function shopButton:intersectsMouse(b)
  return shopButton.super.intersectsMouse(self, b)
end

function shopButton:drawInfoOfTowers(a,b,c,d)
   love.graphics.print("Attack Speed: " .. a, 815, 310)
   love.graphics.print("Attack Damage: " .. b, 815, 330)
   love.graphics.print("Attack Radius: " .. c, 815, 350)
end


return shopButton