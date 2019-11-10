local HUDB = HUDB or require "Classes/HUD/HUDButtons"
local Vector = Vector or require "Lib/vector"
local nextRound = HUDB:extend()

local pressed = false

function nextRound:new()
  nextRound.super.new(self, "Resources/HUD/nextRound.png", 810, 610, nil, nil, nil, 0,0)
end

function nextRound:update(dt)
  if(nextRound.super.isPressed(self) and pressed == false) then
    pressed = true
    if(Round.RoundActive == false) then
      Round.timer = 0
    end
  elseif(love.mouse.isDown(1) == false) then
    pressed = false
  end
end

function nextRound:draw()
  nextRound.super.draw(self)
  
   love.graphics.setFont(sampleFont2)
   love.graphics.setColor(0,0,0,100)
  love.graphics.print(Round.round,920,610,nil,2,2)
     love.graphics.setColor(255,255,255,100)

    love.graphics.setFont(sampleFont)
end

return nextRound