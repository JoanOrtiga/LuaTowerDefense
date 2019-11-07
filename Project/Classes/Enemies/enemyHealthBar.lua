local Actor = Actor or require "Lib/Actor"
local HealthBar = Actor:extend()

function HealthBar:new(position, health)
  self.position = position
  self.health = health
  self.maxHealth = health
  
end

function HealthBar:update(dt, position, health)
  self.position.y = position.y - 30
  self.position.x = position.x - 25
  self.health = health
end

function HealthBar:draw()
  
  love.graphics.rectangle("fill", self.position.x-2, self.position.y-2, 54,14)
  love.graphics.setColor(255,0,0,100)
  love.graphics.rectangle("fill", self.position.x, self.position.y, 50 * (self.health/self.maxHealth),10)
  love.graphics.setColor(255,255,255,100)
      

end

return HealthBar