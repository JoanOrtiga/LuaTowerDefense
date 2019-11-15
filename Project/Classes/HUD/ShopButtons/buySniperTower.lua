local HudButton = HudButton or require "Classes/HUD/ShopButtons/shopButton"
local BuySniperTower = HudButton:extend()
local Tower = Tower or require "Classes/Towers/sniperTower"

function BuySniperTower:new(posX, posY)
  BuySniperTower.super.new(self, "Resources/HUD/SniperTower.png", posX,posY, nil, nil, nil, 0,0)
end

function BuySniperTower:update(dt)
  if BuySniperTower.super.isPressed(self) then    
        if(Round.Money - Data.sniperTower.cost >= 0) then

    if(towerMap[clickedSquare.x][clickedSquare.y] == nil and map[clickedSquare.x][clickedSquare.y] == 1)then
        local Towerx = Tower(clickedSquare.x,clickedSquare.y)
        towerMap[clickedSquare.x][clickedSquare.y] = Towerx
        Round.Money = Round.Money - Data.sniperTower.cost
      end
  end
  end
  
end

function BuySniperTower:draw()
  BuySniperTower.super.draw(self)
  
  if(BuySniperTower.super.intersectsMouse(self, love.mouse)) then
    if(map[clickedSquare.x][clickedSquare.y] == 1)then
    love.graphics.circle("line", (clickedSquare.x-1) * 50 + 25, (clickedSquare.y-1) * 50 + 25, Data.sniperTower.radius)
    end
    BuySniperTower.super.drawInfoOfTowers(self, Data.sniperTower.attackSpeed, Data.sniperTower.attackDamage, Data.sniperTower.radius)
  end
end


return BuySniperTower