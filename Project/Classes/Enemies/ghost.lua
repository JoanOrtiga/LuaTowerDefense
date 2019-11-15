local Enemy = Enemy or require "Classes/Enemies/enemy"
local Ghost = Enemy:extend()

function Ghost:new(posX, posY)
  Ghost.super.new(self, "Resources/Enemies/Ghost.png", posX, posY, Data.ghostEnemy.speed, Data.ghostEnemy.health, Data.ghostEnemy.revenue)
end

function Ghost:update(dt)
  Ghost.super.update(self, dt)
end

function Ghost:draw()
  Ghost.super.draw(self)
end

return Ghost