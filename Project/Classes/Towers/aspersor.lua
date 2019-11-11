local Actor = Actor or require "Classes/Towers/tower"
local Aspersor = Aspersor:extend()
local Timer = Timer or require"Lib/Timer"
local AsperBullet = AsperBullet or require()

--local lvl = {}

function Aspersor:new()
  Aspersor.super.new(self, lvl[1], xTable, yTable, Data.aspersor.cost, Data.aspersor.radius, Data.aspersor.attackSpeed, Data.aspersor.attackDamage) 
end

function Aspersor:update()
  ArcherTower.super.update(self, dt, "aspersor")
end

function Aspersor:draw()
    Aspersor.super.draw(self) 
end

function shoot()
  local asperbullet = AsperBullet(self.position + self.origin)
  
end

function Aspersor:changeLevel()
  Aspersor.super.changeLevel(self, self.level, lvl)
  
  self.radius = Data.aspersor2.radius
  self.attackSpeed = Data.aspersor2.attackSpeed
  self.attackDmg = Data.aspersor2.attackDamage
end

return Aspersor