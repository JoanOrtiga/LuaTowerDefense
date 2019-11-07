local Tower = Tower or require "Classes/Towers/tower"
local Metralleta = Tower:extend()
local Timer = Timer or require"Lib/timer"

local lvl = {"Resources/archerTower1.png", "Resources/archerTower2.png"}

function Metralleta:new(xTable,yTable)
  Metralleta.super.new(self, lvl[1], xTable, yTable, 40, 100) --nil per image
  
  self.cost = 20
  self.radiAtac = 7
  self.speedAtac = 1
  self.damageAtac = 10
end

function Metralleta:update(dt)
  Metralleta.super.update(self, dt)
  
  --que dispare cada x segons
  --que apunte a l'enemic que dispara
end

function Metralleta:draw()
    Metralleta.super.draw(self) 

end

return Metralleta

