local HUDB = HUDB or require "Classes/HUD/HUDButtons"
local Vector = Vector or require "Lib/vector"
local pauseButton = HUDB:extend()

local pressed = false

function pauseButton:new()
  pauseButton.super.new(self, "Resources/HUD/levelUp.png", 810, 517, nil, nil, nil, 0,0)
end

function pauseButton:update(dt)
  if(pauseButton.super.isPressed(self) and pressed == false) then
    pressed = true
    if(towerMap[clickedSquare.x][clickedSquare.y] ~= nil) then
      towerMap[clickedSquare.x][clickedSquare.y].level = towerMap[clickedSquare.x][clickedSquare.y].level + 1
      towerMap[clickedSquare.x][clickedSquare.y]:changeLevel()
    end
  elseif(love.mouse.isDown(1) == false) then
    pressed = false
  end
end

function pauseButton:draw()
  pauseButton.super.draw(self)  
  
  
end

return pauseButton