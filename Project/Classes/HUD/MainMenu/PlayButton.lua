local HUDB = HUDB or require "Classes/HUD/HUDButtons"
local PlayButton = HUDB:extend()

local pressed = false

function PlayButton:new()
  PlayButton.super.new(self, "Resources/HUD/nextRound.png", 400, 300, nil, nil, nil, 0,0)
end

function PlayButton:update(dt)
  if(PlayButton.super.isPressed(self) and pressed == false) then
    pressed = true
    changeScene(2)
  elseif(love.mouse.isDown(1) == false) then
    pressed = false
  end
end

function PlayButton:draw()
  PlayButton.super.draw(self)
end

return PlayButton