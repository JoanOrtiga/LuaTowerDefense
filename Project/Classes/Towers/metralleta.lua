local Tower = Tower or require "Classes/Towers/tower"
local Metralleta = Tower:extend()
local Timer = Timer or require"Lib/timer"

function Metralleta:new(xTable,yTable)
  Tower.super.new(self, nil, xTable, yTable, 40) --nil per image
  
  --self.image = --aplicar imatge
  
  self.cost = 20
  self.radiAtac = 7
  self.speedAtac = 1
  self.damageAtac = 10
  
  Timer.new(self.speedAtac, , true)
end

function Metralleta:update()
  --que dispare cada x segons
  --que apunte a l'enemic que dispara
end

function Metralleta:draw()
    Metralleta.super.draw(self) 

end

return Metralleta

