local HUDB = HUDB or require "Classes/HUD/HUDButtons"
local Vector = Vector or require "Lib/vector"
local deleteButton = HUDB:extend()

local pressed = false

function deleteButton:new()
  deleteButton.super.new(self, "Resources/HUD/deleteTower.png", 905, 515, nil, nil, nil, 0,0)
end

function deleteButton:update(dt)
  if(deleteButton.super.isPressed(self) and pressed == false) then
    pressed = true
    if(towerMap[clickedSquare.x][clickedSquare.y] ~= nil) then
      --if(towerMap[clickedSquare.x][clickedSquare.y]:is()
      towerMap[clickedSquare.x][clickedSquare.y].delete = true
      Round.Money = Round.Money + Data.destroyRevenue
    end
  elseif(love.mouse.isDown(1) == false) then
    pressed = false
  end
end

function deleteButton:draw()
  deleteButton.super.draw(self)  
end

return deleteButton