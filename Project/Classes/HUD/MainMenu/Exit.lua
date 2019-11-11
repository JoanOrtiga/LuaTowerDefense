local HUDB = HUDB or require "Classes/HUD/HUDButtons"
local Exit = HUDB:extend()

function Exit:new()
  Exit.super.new(self, "Resources/MainMenu/exit.png", 100, 440, nil, nil, nil, 0,0)
end

function Exit:update(dt)
  if(Exit.super.isPressed(self)) then
    os.exit()
  end
end

function Exit:draw()
  Exit.super.draw(self)
end

return Exit