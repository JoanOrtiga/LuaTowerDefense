local Enemy = Enemy or require "Classes/Enemies/enemy"
local SwampThing = Enemy:extend()

function SwampThing:new(posX, posY)
  SwampThing.super.new(self, "Resources/Enemies/SwampThing.png", posX, posY, Data.swampThingEnemy.speed, Data.swampThingEnemy.health, Data.swampThingEnemy.revenue)
end

function SwampThing:update(dt)
  SwampThing.super.update(self, dt)
end

function SwampThing:draw()
  SwampThing.super.draw(self)
end

return SwampThing