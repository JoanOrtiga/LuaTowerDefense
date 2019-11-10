local Tower = Tower or require "Classes/Towers/tower"
local Metralleta = Tower:extend()
local Timer = Timer or require"Lib/timer"

local Bullet = Bullet or require "Classes/Bullets/arrow"

local lvl = {"Resources/archerTower1.png", "Resources/archerTower2.png"}

function Metralleta:new(xTable,yTable)
  Metralleta.super.new(self, lvl[1], xTable, yTable, Data.archerTower.cost, Data.archerTower.radius, Data.archerTower.attackSpeed, Data.archerTower.attackDamage) 
end

function Metralleta:update(dt)
  Metralleta.super.update(self, dt, "archer")
end

function Metralleta:draw()
    Metralleta.super.draw(self) 
end

function Metralleta:changeLevel()
  Metralleta.super.changeLevel()
end

return Metralleta

