local Actor = Actor or require "Lib/actor"
local Francotirador = Francotirador:extend()

function Francotirador:new()
  Francotirador.new(self)
  
  self.image = --aplicar imatge
  
  self.cost = 30
  self.radiAtac = 10
  self.speedAtac = 2--s
  self.damageAtac = 35
end

function Francotirador:update()
  --que dispare cada x segons
  --que apunte a l'enemic que dispara
end

function Francotirador:draw()
  self.position.x = 
  self.position.y = 

  love.graphics.draw(self.image)
end

return Francotirador