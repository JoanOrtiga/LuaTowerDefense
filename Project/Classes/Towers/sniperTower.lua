local Tower = Tower or require "Classes/Towers/tower"
local Sniper = Tower:extend()
local Timer = Timer or require"Lib/timer"

local lvl = {"Resources/Towers/sniperTower1.png", "Resources/Towers/sniperTower2.png"}

function Sniper:new(xTable,yTable)
  Sniper.super.new(self, lvl[1], xTable, yTable, Data.sniperTower.cost, Data.sniperTower.radius, Data.sniperTower.attackSpeed, Data.sniperTower.attackDamage, "sniperTower") 
end

function Sniper:update(dt)
  Sniper.super.update(self, dt, "sniper")
end

function Sniper:draw()
    Sniper.super.draw(self) 
end

function Sniper:changeLevel()
  if(Round.Money - Data.sniperTower2.cost >= 0) then
    Round.Money = Round.Money - Data.sniperTower2.cost
    Sniper.super.changeLevel(self, self.level, lvl)
  
    self.radius = Data.sniperTower2.radius
    self.attackSpeed = Data.sniperTower2.attackSpeed
    self.attackDmg = Data.sniperTower2.attackDamage
  end
end

return Sniper