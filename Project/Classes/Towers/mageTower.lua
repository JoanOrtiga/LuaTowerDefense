local Tower = Tower or require "Classes/Towers/tower"
local AeO = Tower:extend()

function AeO:new(xTable,yTable)
  AeO.super.new(self, "Resources/mageTower1.png", xTable, yTable)
  
  self.cost = 30
  self.radiAtac = 30
  self.damageAtac = 20
end

function AeO:update()
  --que dispare cada x segons
  --que apunte a l'enemic que dispara
end

function AeO:draw()
    AeO.super.draw(self)
end

return AeO