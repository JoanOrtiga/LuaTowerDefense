local HudButton = HudButton or require "Classes/HUD/ShopButtons/shopButton"
local BuyMageTower = HudButton:extend()
local Tower = Tower or require "Classes/Towers/mageTower"

function BuyMageTower:new(posX, posY)
  BuyMageTower.super.new(self, "Resources/mageTower1.png", posX,posY, nil, nil, nil, 0,0,1.7,1.7)
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
end


return BuyMageTower