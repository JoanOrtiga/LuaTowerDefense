local HUDB = HUDB or require "Classes/HUD/HUDButtons"
local Vector = Vector or require "Lib/vector"
local pauseButton = HUDB:extend()

local pressed = false

function pauseButton:new()
  pauseButton.super.new(self, "Resources/HUD/pauseButton.png", 810, 705, nil, nil, nil, 0,0)
end

function pauseButton:update(dt)
  
end

function pauseButton:draw()
  pauseButton.super.draw(self)
  
  if(pauseGame == true) then
    love.graphics.setFont(sampleFont2)
    love.graphics.print("PAUSED", 340, 750)
  end
  
  if(pauseButton.super.isPressed(self) and pressed == false) then
    pressed = true
    if(pauseGame == true) then
      pauseGame = false
    else
      pauseGame = true
    end
  elseif(love.mouse.isDown(1) == false) then
    pressed = false
  end
end

return pauseButton