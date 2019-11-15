local shopButton = shopButton or require "Classes/HUD/ShopButtons/shopButton"
local BuySlowTower = shopButton:extend()
local Tower = Tower or require "Classes/Towers/slowTower"

function BuySlowTower:new(posX, posY)
  BuySlowTower.super.new(self, "Resources/HUD/SlowTower1.png", posX,posY, nil, nil, nil, 0,0)
end

function BuySlowTower:update(dt)
  if BuySlowTower.super.isPressed(self) then    
    if(Round.Money - Data.slowTower1.cost >= 0) then
    if(towerMap[clickedSquare.x][clickedSquare.y] == nil and map[clickedSquare.x][clickedSquare.y] == 1)then
        local Towerx = Tower(clickedSquare.x,clickedSquare.y)
        towerMap[clickedSquare.x][clickedSquare.y] = Towerx
        Round.Money = Round.Money - Data.slowTower1.cost
      end
    end
  end
  
end

function BuySlowTower:draw()
  BuySlowTower.super.draw(self)
  
  if(BuySlowTower.super.intersectsMouse(self, love.mouse)) then
    if(map[clickedSquare.x][clickedSquare.y] == 1)then
    love.graphics.circle("line", (clickedSquare.x-1) * 50 + 25, (clickedSquare.y-1) * 50 + 25, Data.slowTower1.radius)
    end
    BuySlowTower.super.drawInfoOfTowers(self, 0, 0, Data.slowTower1.radius)
  end
  
end


return BuySlowTower