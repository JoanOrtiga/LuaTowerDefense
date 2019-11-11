local Tower = Tower or require "Classes/Towers/tower"
local ArcherTower = Tower:extend()
local Timer = Timer or require"Lib/timer"

local Bullet = Bullet or require "Classes/Bullets/arrow"

local lvl = {"Resources/archerTower1.png", "Resources/archerTower2.png"}

function ArcherTower:new(xTable,yTable)
  ArcherTower.super.new(self, lvl[1], xTable, yTable, Data.archerTower.cost, Data.archerTower.radius, Data.archerTower.attackSpeed, Data.archerTower.attackDamage) 
end

function ArcherTower:update(dt)
  ArcherTower.super.update(self, dt, "archer")
end

function ArcherTower:draw()
    ArcherTower.super.draw(self) 
end

function ArcherTower:changeLevel()
  ArcherTower.super.changeLevel(self, self.level, lvl)
  
  self.radius = Data.archerTower2.radius
  self.attackSpeed = Data.archerTower2.attackSpeed
  self.attackDmg = Data.archerTower2.attackDamage
end

return ArcherTower

