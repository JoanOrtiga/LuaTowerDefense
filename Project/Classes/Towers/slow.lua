local Actor = Actor or require "Classes/Towers/tower"
local Slow = Slow:extend()
local Timer = Timer or require"Lib/Timer"

--local SlowBullet = SlowBullet or require "Classes/Bullets/slowBullet"

--local lvl = {}

function Slow:new()
  Slow.super.new(self, lvl[1], xTable, yTable, Data.slow.cost, Data.slow.radius, Data.slow.attackSpeed, Data.slow.attackDamage) 

end

function Slow:update()
  ArcherTower.super.update(self, dt, "slow")
end

function Slow:draw()
  Slow.super.draw(self) 

end

function Slow:changeLevel()
  Slow.super.changeLevel(self, self.level, lvl)
  
  self.radius = Data.slow2.radius
  self.attackSpeed = Data.slow2.attackSpeed
  self.attackDmg = Data.slow2.attackDamage
end

return Slow