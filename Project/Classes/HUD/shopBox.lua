local Actor = Actor or require "Lib/actor"
local Vector = Vector or require "Lib/vector"
local ShopBox = Actor:extend()




function ShopBox:new()
  ShopBox.super.new(self, "Resources/shopMenu.png", 800,0,nil, nil, nil, 0, 0)
  
 
end

function ShopBox:update(dt)
  
end

function ShopBox:draw()
  ShopBox.super.draw(self)
end

function ShopBox:clickedButton()
  if(love.mouse.isDown(1)) then
    return mouseIntersecs(self, love.mouse.getX(), love.mouse.getY())
  end
  
  return nil
end

function ShopBox:mouseIntersecs(mouseX,mouseY)
  
  x = 810
  y = 10
  x = 905
  y = 10
  
  x

  
end
  

return ShopBox