local HudButton = HudButton or require "Classes/HUD/ShopButtons/shopButton"
local BuyMageTower = HudButton:extend()
local Tower = Tower or require "Classes/Towers/mageTower"

function BuyMageTower:new(posX, posY)
  BuyMageTower.super.new(self, "Resources/HUD/MageTower1.png", posX,posY, nil, nil, nil, 0,0)
end

function BuyMageTower:update(dt)
  if BuyMageTower.super.isPressed(self) then    
        if(Round.Money - Data.mageTower.cost >= 0) then

    if(towerMap[clickedSquare.x][clickedSquare.y] == nil and map[clickedSquare.x][clickedSquare.y] == 1)then
        local Towerx = Tower(clickedSquare.x,clickedSquare.y)
        towerMap[clickedSquare.x][clickedSquare.y] = Towerx
        Round.Money = Round.Money - Data.mageTower.cost
      end
  end
  end
  
end

function BuyMageTower:draw()
  BuyMageTower.super.draw(self)
  
  if(BuyMageTower.super.intersectsMouse(self, love.mouse)) then
    if(map[clickedSquare.x][clickedSquare.y] == 1)then
    love.graphics.circle("line", (clickedSquare.x-1) * 50 + 25, (clickedSquare.y-1) * 50 + 25, Data.mageTower.radius)
    end
    BuyMageTower.super.drawInfoOfTowers(self, Data.mageTower.attackSpeed, Data.mageTower.attackDamage, Data.mageTower.radius)
  end
end


return BuyMageTower