local Actor = Actor or require "Lib/actor"
local Vector = Vector or require "Lib/vector"
local ShopBox = Actor:extend()

local Tower = Tower or require "Classes/Towers/archerTower"
local buyArcherTower = buyArcherTower or require "Classes/HUD/ShopButtons/buyArcherTower"
local buyMageTower = buyMageTower or require "Classes/HUD/ShopButtons/buyMageTower"
local pauseButton = pauseButton or require "Classes/HUD/Utility/pauseButton"
local levelup = levelup or require "Classes/HUD/Utility/levelUp"
local deleteTower = deleteTower or require "Classes/HUD/Utility/deleteTower"



function ShopBox:new()
  ShopBox.super.new(self, "Resources/shopMenu.png", 800,0,nil, nil, nil, 0, 0)
  
  self.numberOfTowersV = 5
  self.numberOfTowersH = 2
  
  local BuyArcherTower = buyArcherTower(self.position.x + 10, self.position.y + 10)
  table.insert(sceneItems, BuyArcherTower)
  
  local BuyMageTower = buyMageTower(self.position.x + 105,self.position.y + 10)
  table.insert(sceneItems, BuyMageTower)
  
  local PauseButton = pauseButton()
  table.insert(sceneItems, PauseButton)
  
   local levelUp = levelup()
  table.insert(sceneItems, levelUp)
  
  local DeleteTower = deleteTower()
  table.insert(sceneItems, DeleteTower)
end

function ShopBox:update(dt)
 -- ShopBox.clickedButton(self)
end

function ShopBox:draw()
  ShopBox.super.draw(self)
end

function ShopBox:clickedButton(self)
  if(love.mouse.isDown(1)) then
    local typeTower = ShopBox.mouseIntersecs(self)
    
    if(typeTower == "defaultTower") then
      if(towerMap[clickedSquare.x][clickedSquare.y] == nil and map[clickedSquare.x][clickedSquare.y] == 1)then
        local Towerx = Tower(clickedSquare.x,clickedSquare.y)
        towerMap[clickedSquare.x][clickedSquare.y] = Towerx
      end
    elseif(typeTower == "tower2") then
    
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