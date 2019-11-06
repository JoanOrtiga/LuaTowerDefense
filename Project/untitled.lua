local AsperBullet = AsperBullet or require "Lib/asperBullet"
local AsperBullet = Actor or require "Towers/aspersor"

function AsperBullet:new(position)
  AsperBullet.super.new(self, position.x, position.y)
end

function AsperBullet:update()
  
end

function AsperBullet:draw()
  love.graphics.draw(self.image)
end

return AsperBullet