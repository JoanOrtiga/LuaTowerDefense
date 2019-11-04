local Actor = Actor or require "Lib/actor"
local Slow = Slow:extend()

function Slow:new()
  Slow.new(self)
  
  self.image = --aplicar imatge
  
  self.cost = 55
  self.radiAtac = 5
  self.speedAtac = 4
  self.damageAtac = 80
end

function Slow:update()
  --que dispare cada x segons
  --que apunte a l'enemic que dispara
end

function Slow:draw()
  self.position.x = 
  self.position.y = 

  love.graphics.draw(self.image)
end

return Slow