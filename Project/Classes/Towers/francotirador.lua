local Actor = Actor or require "Classes/Towers/tower"
local Francotirador = Francotirador:extend()
local Timer = Timer or require"Lib/Timer"

--local FranBullet = FranBullet or require "Classes/Bullets/franBullet"

--local lvl = {}

function Francotirador:new()
  Francotirador.super.new(self, lvl[1], xTable, yTable, Data.francotirador.cost, Data.archerTower.radius, Data.archerTower.attackSpeed, Data.archerTower.attackDamage
end

function Francotirador:update()
  Francotirador.super.update(self, dt, "francotirador")
end

function Francotirador:draw()
    Francotirador.super.draw(self) 

end

function Francotirador:changeLevel()
  Francotirador.super.changeLevel(self, self.level, lvl)
  
  self.radius = Data.francotirador2.radius
  self.attackSpeed = Data.francotirador2.attackSpeed
  self.attackDmg = Data.francotirador2.attackDamage
end

return Francotirador