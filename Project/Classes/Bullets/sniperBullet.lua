local Bullet = Bullet or require "Classes/Bullets/bullet"
local Sniper = Bullet:extend()

function Sniper:new(position, enemy, damage)
  Sniper.super.new(self, "Resources/sampleBullet.png", position, enemy, damage, 800)
end

function Sniper:update(dt)
  Sniper.super.update(self,dt)
end

function Sniper:draw()
  Sniper.super.draw(self)
end


return Sniper