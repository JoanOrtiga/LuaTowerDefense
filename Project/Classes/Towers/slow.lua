local Actor = Actor or require "Classes/Towers/tower"
local Slow = Slow:extend()
local Timer = Timer or require"Lib/Timer"

function Slow:new()
  Slow.super.new(self, nil, xTable, yTable)
  
  self.image = --aplicar imatge
  
  self.cost = 55
  self.radiAtac = 5
  self.speedAtac = 4
  self.damageAtac = 80
  
  Timer.new(self.speedAtac, , true)
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