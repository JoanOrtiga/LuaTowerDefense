local HUDB = HUDB or require "Classes/HUD/HUDButtons"
local Vector = Vector or require "Lib/vector"
local goMain = HUDB:extend()

local pressed = false

function goMain:new()
  goMain.super.new(self, "Resources/HUD/quitToMenu.png", 905, 705, nil, nil, nil, 0,0)
  
  self.pulsedOnce = false
end

function goMain:update(dt)
  if(pressed == false) then
    if(love.mouse.isDown(1))then
      if(not(goMain.super.isPressed(self))) then
        self.pulsedOnce = false
      end
    end
  end
  
  
  if(goMain.super.isPressed(self) and pressed == false) then
    pressed = true
    if(self.pulsedOnce == false) then
      self.pulsedOnce = true
    else
      changeScene(1)
    end
  elseif(love.mouse.isDown(1) == false) then
    pressed = false
  end
end

function goMain:draw()
  goMain.super.draw(self)  
end

return goMain