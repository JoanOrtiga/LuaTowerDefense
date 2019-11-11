local Tower = Tower or require "Classes/Towers/tower"
local MageTower = Tower:extend()
local Timer = Timer or require"Lib/timer"

--local mageBullet = mageBullet or require "Classes/Bullets/mageBullet"

--local lvl = {}

function MageTower:new(xTable,yTable)
  MageTower.super.new(lvl[1], xTable, yTable, Data.mageTower.cost, Data.mageTower.radius, Data.mageTower.attackSpeed, Data.mageTower.attackDamage)
  
end

function MageTower:update()
  ArcherTower.super.update(self, dt, "mage")
end

function MageTower:draw()
    MageTower.super.draw(self)
end

function MageTower:changeLevel()
  MageTower.super.changeLevel(self, self.level, lvl)
  
  self.radius = Data.mageTower2.radius
  self.attackSpeed = Data.mageTower2.attackSpeed
  self.attackDmg = Data.mageTower2.attackDamage
end

return MageTower