local HUDB = HUDB or require "Classes/HUD/HUDButtons"
local Options = HUDB:extend()

function Options:new()
  Options.super.new(self, "Resources/MainMenu/options.png", 60, 260, nil, nil, nil, 0,0)
end

function Options:update(dt)
  if(Options.super.isPressed(self)) then
    os.exit()
  end
end

function Options:draw()
  Options.super.draw(self)
end

return Options