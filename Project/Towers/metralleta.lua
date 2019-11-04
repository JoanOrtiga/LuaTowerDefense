local Actor = Actor or require "Lib/actor"
local Metralleta = Metralleta:extend()

function Metralleta:new()
  Metralleta.new(self)
  
  self.image = --aplicar imatge
  
  self.cost = 20
  self.radiAtac = 7
  self.speedAtac = --1s
  self.damageAtac = 10
end

function Metralleta:update()
  --que dispare cada x segons
  --que apunte a l'enemic que dispara
end

function Metralleta:draw()
  self.position.x = 
  self.position.y = 

  love.graphics.draw(self.image)
end

return Metralleta

