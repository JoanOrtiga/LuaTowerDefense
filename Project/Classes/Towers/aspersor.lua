local Actor = Actor or require "Classes/Towers/tower"
local Aspersor = Aspersor:extend()
local Timer = Timer or require"Lib/Timer"

local AsperBullet = AsperBullet or require()

function Aspersor:new()
  Aspersor.super.new(self, nil, xTable, yTable)
  
  self.image = --aplicar imatge
  
  self.cost = 35
  self.radiAtac = 10
  self.speedAtac = 0.5
  self.damageAtac = 15
  
  Timer.new(self.speedAtac, shoot, true)
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

function shoot()
  local asperbullet = AsperBullet(self.position + self.origin)
  
end

return Aspersor