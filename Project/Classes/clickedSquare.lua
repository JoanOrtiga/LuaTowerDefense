local Actor = Actor or require "Lib/actor"
local ClickedSquare = Actor:extend()

function ClickedSquare:new(xTable,yTable)
  ClickedSquare.super.new(self, "Resources/selectedSquare.png",xTable * 50 - 50 ,yTable * 50 - 50,nil,nil,nil,0,0)
end

function ClickedSquare:update(dt)
  
end

function ClickedSquare:draw()
  if(map[clickedSquare.x][clickedSquare.y] == 1) then 
    love.graphics.setColor(0,0,0,100)
    ClickedSquare.super.draw(self) 
    love.graphics.setColor(255,255,255,100)
  end
end

return ClickedSquare
