local shopButton = shopButton or require "Classes/HUD/ShopButtons/shopButton"
local BuyArcherTower = shopButton:extend()
local Tower = Tower or require "Classes/Towers/archerTower"

function BuyArcherTower:new(posX, posY)
  BuyArcherTower.super.new(self, "Resources/archerTower1.png", posX,posY, nil, nil, nil, 0,0,1.7,1.7)
end

function BuyArcherTower:update(dt)
  if BuyArcherTower.super.isPressed(self) then    
    if(Round.Money - Data.archerTower.cost >= 0) then
    if(towerMap[clickedSquare.x][clickedSquare.y] == nil and map[clickedSquare.x][clickedSquare.y] == 1)then
        local Towerx = Tower(clickedSquare.x,clickedSquare.y)
        towerMap[clickedSquare.x][clickedSquare.y] = Towerx
        Round.Money = Round.Money - Data.archerTower.cost
      end
      
    end
  end
  
end

function BuyArcherTower:draw()
  BuyArcherTower.super.draw(self)
  
  if(BuyArcherTower.super.intersectsMouse(self, love.mouse)) then
    if(map[clickedSquare.x][clickedSquare.y] == 1)then
    love.graphics.circle("line", (clickedSquare.x-1) * 50 + 25, (clickedSquare.y-1) * 50 + 25, Data.archerTower.radius)
    end
    BuyArcherTower.super.drawInfoOfTowers(self, Data.archerTower.attackSpeed, Data.archerTower.attackDamage, Data.archerTower.radius)
  end
  
end


return BuyArcherTower