local Enemy = Enemy or require "Classes/Enemies/enemy"
local Demon = Enemy:extend()

function Demon:new(posX, posY)
  Demon.super.new(self, "Resources/Enemies/Demon.png", posX, posY, Data.demonEnemy.speed, Data.demonEnemy.health, Data.demonEnemy.revenue)
end

function Demon:update(dt)
  Demon.super.update(self, dt)
end

function Demon:draw()
  Demon.super.draw(self)
end

return Demon