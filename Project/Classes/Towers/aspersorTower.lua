local Tower = Tower or require "Classes/Towers/tower"
local Aspersor = Tower:extend()
local Timer = Timer or require"Lib/timer"

local lvl = {"Resources/Towers/360Tower1.png", "Resources/Towers/360Tower2.png"}

function Aspersor:new(xTable,yTable)
  Aspersor.super.new(self, lvl[1], xTable, yTable, Data.t360Tower.cost, Data.t360Tower.radius, Data.t360Tower.attackSpeed, Data.t360Tower.attackDamage, "aspersorTower") 
end

function Aspersor:update(dt)
  Aspersor.super.update(self, dt, "aspersor")
end

function Aspersor:draw()
    Aspersor.super.draw(self) 
end

function Aspersor:changeLevel()
  if(Round.Money - Data.archerTower2.cost >= 0) then
    Round.Money = Round.Money - Data.archerTower2.cost
    Aspersor.super.changeLevel(self, self.level, lvl)
  
    self.radius = Data.archerTower2.radius
    self.attackSpeed = Data.archerTower2.attackSpeed
    self.attackDmg = Data.archerTower2.attackDamage
  end
end

return Aspersor
