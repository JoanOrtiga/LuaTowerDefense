local shopButton = shopButton or require "Classes/HUD/ShopButtons/shopButton"
local Buy360Tower = shopButton:extend()
local Tower = Tower or require "Classes/Towers/aspersorTower"

function Buy360Tower:new(posX, posY)
  Buy360Tower.super.new(self, "Resources/HUD/360Tower1.png", posX,posY, nil, nil, nil, 0,0--[[,1.7,1.7]])
end

function Buy360Tower:update(dt)
  if Buy360Tower.super.isPressed(self) then    
    if(Round.Money - Data.t360Tower.cost >= 0) then
    if(towerMap[clickedSquare.x][clickedSquare.y] == nil and map[clickedSquare.x][clickedSquare.y] == 1)then
        local Towerx = Tower(clickedSquare.x,clickedSquare.y)
        towerMap[clickedSquare.x][clickedSquare.y] = Towerx
        Round.Money = Round.Money - Data.t360Tower.cost
      end
    end
  end
  
end

function Buy360Tower:draw()
  Buy360Tower.super.draw(self)
  
  if(Buy360Tower.super.intersectsMouse(self, love.mouse)) then
    if(map[clickedSquare.x][clickedSquare.y] == 1)then
    love.graphics.circle("line", (clickedSquare.x-1) * 50 + 25, (clickedSquare.y-1) * 50 + 25, Data.t360Tower.radius)
    end
    Buy360Tower.super.drawInfoOfTowers(self, Data.t360Tower.attackSpeed, Data.t360Tower.attackDamage, Data.t360Tower.radius)
  end
  
end


return Buy360Tower