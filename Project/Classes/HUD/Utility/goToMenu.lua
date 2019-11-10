local HUDB = HUDB or require "Classes/HUD/HUDButtons"
local Vector = Vector or require "Lib/vector"
local goMain = HUDB:extend()

local pressed = false

function goMain:new()
  goMain.super.new(self, "Resources/HUD/quitToMenu.png", 905, 705, nil, nil, nil, 0,0)
end

function goMain:update(dt)
  if(goMain.super.isPressed(self) and pressed == false) then
    pressed = true
    changeScene(1)
  elseif(love.mouse.isDown(1) == false) then
    pressed = false
  end
end

function goMain:draw()
  goMain.super.draw(self)  
end

return goMain