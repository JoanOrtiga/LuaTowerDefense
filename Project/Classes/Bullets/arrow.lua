local Bullet = Bullet or require "Classes/Bullets/bullet"
local Arrow = Bullet:extend()

function Arrow:new(position, enemy, damage)
  Arrow.super.new(self, "Resources/arrow_bullet.png", position, enemy, damage)
end

function Arrow:update(dt)
  Arrow.super.update(self,dt)
end

function Arrow:draw()
  Arrow.super.draw(self)
end


return Arrow