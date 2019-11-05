local Actor = Actor or require "Classes/Towers/tower"
local Aspersor = Aspersor:extend()

function Aspersor:new()
  Aspersor.super.new(self, nil, xTable, yTable)
  
  self.image = --aplicar imatge
  
  self.cost = 35
  self.radiAtac = 10
  self.speedAtac = 0.5
  self.damageAtac = 15
end

function Aspersor:update()
  --que dispare cada x segons
  --que apunte a l'enemic que dispara
end

function Aspersor:draw()
  self.position.x = 
  self.position.y = 

  love.graphics.draw(self.image)
end

return Aspersor