local Actor = Actor or require "Lib/actor"
local Vector = Vector or require "Lib/vector"
local ShopBox = Actor:extend()

local Tower = Tower or require "Classes/tower"


function ShopBox:new()
  ShopBox.super.new(self, "Resources/shopMenu.png", 800,0,nil, nil, nil, 0, 0)
  
  self.numberOfTowersV = 5
  self.numberOfTowersH = 2
 
end

function ShopBox:update(dt)
  ShopBox.clickedButton(self)
end

function ShopBox:draw()
  ShopBox.super.draw(self)
end

function ShopBox:clickedButton(self)
  if(love.mouse.isDown(1)) then
    local typeTower = ShopBox.mouseIntersecs(self)
    
    if(typeTower == "defaultTower") then
      
      if(towerMap[clickedSquare.x][clickedSquare.y] == nil) then
        local Towerx = Tower(clickedSquare.x-1,clickedSquare.y-1)
        towerMap[clickedSquare.x][clickedSquare.y] = Towerx
        print("hola")
      end
    elseif(typeTower == "tower2") then
      print("tower2")
    end
    
    return
  end
end

function ShopBox:mouseIntersecs(self)  
  
  local x,y = 800,00
  for i = 1, 1 do
    x = x + i * 10
    y = y + i * 10
    
    if(love.mouse.getX() < x + i * 85 and love.mouse.getX() > x and love.mouse.getY() < y + i * 85 and love.mouse.getY() > y) then
      return "defaultTower"
    end
    
    if(love.mouse.getX() < x + (i+1) * 85 + i * 10  and love.mouse.getX() > x + i * 85 + i * 10 and love.mouse.getY() < y + i * 85 and love.mouse.getY() > y) then
      return "tower2"
    end
  end

   
end
  

return ShopBox