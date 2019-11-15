local HUDB = HUDB or require "Classes/HUD/HUDButtons"
local Vector = Vector or require "Lib/vector"
local levelUp = HUDB:extend()

local pressed = false

function levelUp:new()
  levelUp.super.new(self, "Resources/HUD/levelUp.png", 810, 515, nil, nil, nil, 0,0)
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
  
 if(levelUp.super.intersectsMouse(self, love.mouse)) then
    if(towerMap[clickedSquare.x][clickedSquare.y] ~=  null)then
      if(towerMap[clickedSquare.x][clickedSquare.y].level < 2) then
      if(towerMap[clickedSquare.x][clickedSquare.y].typeTower == "archerTower") then
              love.graphics.circle("line", (clickedSquare.x-1) * 50 + 25, (clickedSquare.y-1) * 50 + 25, Data.archerTower.radius)
              love.graphics.setColor(128,0,0,100)
              love.graphics.circle("line", (clickedSquare.x-1) * 50 + 25, (clickedSquare.y-1) * 50 + 25, Data.archerTower2.radius)
              love.graphics.setColor(255,255,255,100)
              
              levelUp:drawInfo(Data.archerTower2.attackSpeed, Data.archerTower2.attackDamage, Data.archerTower2.radius)
      elseif(towerMap[clickedSquare.x][clickedSquare.y].typeTower == "mageTower") then
              love.graphics.circle("line", (clickedSquare.x-1) * 50 + 25, (clickedSquare.y-1) * 50 + 25, Data.mageTower.radius)
              love.graphics.setColor(128,0,0,100)
              love.graphics.circle("line", (clickedSquare.x-1) * 50 + 25, (clickedSquare.y-1) * 50 + 25, Data.mageTower2.radius)
              love.graphics.setColor(255,255,255,100)
              
              levelUp:drawInfo(Data.mageTower2.attackSpeed, Data.mageTower2.attackDamage, Data.mageTower2.radius)
      elseif(towerMap[clickedSquare.x][clickedSquare.y].typeTower == "slowTower") then
              love.graphics.circle("line", (clickedSquare.x-1) * 50 + 25, (clickedSquare.y-1) * 50 + 25, Data.slowTower1.radius)
              love.graphics.setColor(128,0,0,100)
              love.graphics.circle("line", (clickedSquare.x-1) * 50 + 25, (clickedSquare.y-1) * 50 + 25, Data.slowTower2.radius)
              love.graphics.setColor(255,255,255,100)
              
              levelUp:drawInfo(0, 0, Data.slowTower2.radius)
        elseif(towerMap[clickedSquare.x][clickedSquare.y].typeTower == "aspersorTower") then
              love.graphics.circle("line", (clickedSquare.x-1) * 50 + 25, (clickedSquare.y-1) * 50 + 25, Data.t360Tower.radius)
              love.graphics.setColor(128,0,0,100)
              love.graphics.circle("line", (clickedSquare.x-1) * 50 + 25, (clickedSquare.y-1) * 50 + 25, Data.t360Tower2.radius)
              love.graphics.setColor(255,255,255,100)
              
              levelUp:drawInfo(Data.t360Tower2.attackSpeed, Data.t360Tower2.attackDamage, Data.t360Tower2.radius)
              
        elseif(towerMap[clickedSquare.x][clickedSquare.y].typeTower == "sniperTower") then
              love.graphics.circle("line", (clickedSquare.x-1) * 50 + 25, (clickedSquare.y-1) * 50 + 25, Data.sniperTower.radius)
              love.graphics.setColor(128,0,0,100)
              love.graphics.circle("line", (clickedSquare.x-1) * 50 + 25, (clickedSquare.y-1) * 50 + 25, Data.sniperTower2.radius)
              love.graphics.setColor(255,255,255,100)
              
              levelUp:drawInfo(Data.sniperTower2.attackSpeed, Data.sniperTower2.attackDamage, Data.sniperTower2.radius)
        end
      end
    end
   -- BuyArcherTower.super.drawInfoOfTowers(self, Data.archerTower.attackSpeed, Data.archerTower.attackDamage, Data.archerTower.radius)

end
end

function levelUp:drawInfo(a,b,c,d)
  love.graphics.setColor(128,0,0,100)
   love.graphics.print("Attack Speed: " .. a, 815, 310)
   love.graphics.print("Attack Damage: " .. b, 815, 330)
   love.graphics.print("Attack Radius: " .. c, 815, 350)
   
   love.graphics.setColor(255,255,255,100)
   
end

return levelUp