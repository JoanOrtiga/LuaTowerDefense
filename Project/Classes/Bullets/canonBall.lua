local Actor = Actor or require "Lib/actor"
local CanonBall = Actor:extend()

function CanonBall:new(position, forwardX, forwardY, damage, radius)
  CanonBall.super.new(self, "Resources/Bullets/360Bullet.png", position.x, position.y, 150,forwardX, forwardY)
  
  self.originalPos = position
  self.radius = radius
  self.damage = damage
end

function CanonBall:update(dt)
  CanonBall.super.update(self, dt)
  
  if(CanonBall.checkBall(self)) then
    for k,v in pairs(enemies) do
      if(CanonBall.super.intersect(self, v)) then
        v.health = v.health - self.damage
      if(v.health <= 0) then
        Round.Money = Round.Money + v.revenue
        enemies[k] = nil
      end
    self.delete = true
  end
    end
  else
    self.delete = true
  end
end

function CanonBall:draw()
  CanonBall.super.draw(self)
--  love.graphics.circle("line", self.position.x, self.position.y, 10)
end

function CanonBall:checkBall()
  local dist = (self.position.x - self.originalPos.x)^2 + (self.position.y - self.originalPos.y)^2
  return dist <= (self.radius + 10)^2
end

return CanonBall