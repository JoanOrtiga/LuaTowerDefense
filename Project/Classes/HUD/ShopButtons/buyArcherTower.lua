local HudButton = HudButton or require "Classes/HUD/hudButton"
local BuyArcherTower = HudButton:extend()
local Tower = Tower or require "Classes/Towers/archerTower"

function BuyArcherTower:new(posX, posY)
  BuyArcherTower.super.new(self, "Resources/archerTower1.png", posX,posY, nil, nil, nil, 0,0,1.7,1.7)
end

function BuyArcherTower:update(dt)
  if BuyArcherTower.super.isPressed(self) then    
    if(towerMap[clickedSquare.x][clickedSquare.y] == nil and map[clickedSquare.x][clickedSquare.y] == 1)then
        local Towerx = Tower(clickedSquare.x,clickedSquare.y)
        towerMap[clickedSquare.x][clickedSquare.y] = Towerx
      end
  end
  
end

function BuyArcherTower:draw()
  BuyArcherTower.super.draw(self)
end


return BuyArcherTower