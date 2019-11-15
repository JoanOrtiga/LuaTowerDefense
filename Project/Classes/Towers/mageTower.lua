local Tower = Tower or require "Classes/Towers/tower"
local AoE = Tower:extend()
local Timer = Timer or require"Lib/timer"

local Bullet = Bullet or require "Classes/Bullets/mageBullet"

local lvl = {"Resources/Towers/mageTower1.png", "Resources/Towers/mageTower2.png"}

function AoE:new(xTable,yTable)
  AoE.super.new(self, lvl[1], xTable, yTable, Data.archerTower.cost, Data.archerTower.radius, Data.archerTower.attackSpeed, Data.archerTower.attackDamage, "aspersorTower") 
end

function AoE:update(dt)
  AoE.super.update(self, dt, "mage")
end

function AoE:draw()
    AoE.super.draw(self) 
end

function AoE:changeLevel()
  if(Round.Money - Data.archerTower2.cost >= 0) then
    Round.Money = Round.Money - Data.archerTower2.cost
    AoE.super.changeLevel(self, self.level, lvl)
  
    self.radius = Data.archerTower2.radius
    self.attackSpeed = Data.archerTower2.attackSpeed
    self.attackDmg = Data.archerTower2.attackDamage
  end
end

return AoE