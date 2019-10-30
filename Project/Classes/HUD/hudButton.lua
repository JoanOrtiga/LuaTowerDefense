local Actor = Actor or require "Lib/actor"
local Vector = Vector or require "Lib/vector"
local hudButton = Actor:extend()

function hudButton:new()
  hudButton.super.new(self, "Resources/shopMenu.png", 800,0,nil, nil, nil, 0, 0)
end

function hudButton:update(dt)

end

function hudButton:draw()
  hudButton.super.draw(self)
end

function hudButton:isPressed()
  
  local x, y = love.mouse.getPosition();
  
  if(love.mouse.isDown(1) and Actor.intersects() then
    return true
  end
  
  return false
end


return hudButton