local Actor = Actor or require "Lib/actor"
local AeO = AeO:extend()

function AeO:new()
  AeO.new(self)
  
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