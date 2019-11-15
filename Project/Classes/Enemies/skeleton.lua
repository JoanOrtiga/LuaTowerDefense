local Enemy = Enemy or require "Classes/Enemies/enemy"
local Skeleton = Enemy:extend()

function Skeleton:new(posX, posY)
  Skeleton.super.new(self, "Resources/Enemies/skeletonEnemy.png", posX,posY, Data.skeletonEnemy.speed, Data.skeletonEnemy.health, Data.skeletonEnemy.revenue)
end

function Skeleton:update(dt)
  Skeleton.super.update(self, dt)
end

function Skeleton:draw()
  Skeleton.super.draw(self)
end

return Skeleton