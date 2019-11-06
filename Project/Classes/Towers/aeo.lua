local Actor = Actor or require "Classes/Towers/tower"
local AeO = AeO:extend()
local Timer = Timer or require"Lib/Timer"

function AeO:new()
  AeO.super.new(self, nil, xTable, yTable)
  
  self.image = --aplicar imatge
  
  self.cost = 30
  self.radiAtac = 30
  self.damageAtac = 20
end

function AeO:update()
  --que dispare cada x segons
  --que apunte a l'enemic que dispara
end

function AeO:draw()
  self.position.x = 
  self.position.y = 

  love.graphics.draw(self.image)
end

return AeO