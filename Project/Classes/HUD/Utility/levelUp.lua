local HUDB = HUDB or require "Classes/HUD/HUDButtons"
local Vector = Vector or require "Lib/vector"
local levelUp = HUDB:extend()

local pressed = false

function levelUp:new()
  levelUp.super.new(self, "Resources/HUD/levelUp.png", 810, 517, nil, nil, nil, 0,0)
end

function levelUp:update(dt)
  if(levelUp.super.isPressed(self) and pressed == false) then
    pressed = true
    if(towerMap[clickedSquare.x][clickedSquare.y] ~= nil) then
      if(towerMap[clickedSquare.x][clickedSquare.y].level < 2) then
        if(Round.Money - Data.archerTower2.cost >= 0) then
          towerMap[clickedSquare.x][clickedSquare.y].level = towerMap[clickedSquare.x][clickedSquare.y].level + 1
          towerMap[clickedSquare.x][clickedSquare.y]:changeLevel()
        end
      end
    end
  elseif(love.mouse.isDown(1) == false) then
    pressed = false
  end
end

function levelUp:draw()
  levelUp.super.draw(self)  
  
 --[[ if(BuyArcherTower.super.intersectsMouse(self, love.mouse)) then
    if(map[clickedSquare.x][clickedSquare.y] == 1)then
    love.graphics.circle("line", (clickedSquare.x-1) * 50 + 25, (clickedSquare.y-1) * 50 + 25, Data.archerTower.radius)
    end
    BuyArcherTower.super.drawInfoOfTowers(self, Data.archerTower.attackSpeed, Data.archerTower.attackDamage, Data.archerTower.radius)
  end]]
end

return levelUp