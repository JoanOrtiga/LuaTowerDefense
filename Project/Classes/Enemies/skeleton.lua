local Enemy = Enemy or require "Classes/Enemies/enemy"
local Skeleton = Enemy:extend()

function Skeleton:new()
  Skeleton.super.new(self, "Resources/skeletonEnemy.png", 125,25, Data.skeletonEnemy.speed, Data.skeletonEnemy.health)
end

function Skeleton:update(dt)
  Skeleton.super.update(self, dt)
end

function Skeleton:draw()
  Skeleton.super.draw(self)
end

return Skeleton