local Enemy = Enemy or require "Classes/Enemies/enemy"
local Ghost = Enemy:extend()

function Ghost:new()
  Ghost.super.new(self, "Resources/Enemies/Ghost.png", 125,25, Data.ghostEnemy.speed, Data.ghostEnemy.health, Data.ghostEnemy.revenue)
end

function Ghost:update(dt)
  Ghost.super.update(self, dt)
end

function Ghost:draw()
  Ghost.super.draw(self)
end

return Ghost