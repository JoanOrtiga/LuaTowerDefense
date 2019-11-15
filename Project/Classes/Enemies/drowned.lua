local Enemy = Enemy or require "Classes/Enemies/enemy"
local Drowned = Enemy:extend()

function Drowned:new(posX, posY)
  Drowned.super.new(self, "Resources/Enemies/Drowned.png",posX, posY, Data.drownedEnemy.speed, Data.drownedEnemy.health, Data.drownedEnemy.revenue)
end

function Drowned:update(dt)
  Drowned.super.update(self, dt)
end

function Drowned:draw()
  Drowned.super.draw(self)
end

return Drowned