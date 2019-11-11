local HUDB = HUDB or require "Classes/HUD/HUDButtons"
local Background = HUDB:extend()

function Background:new()
  Background.super.new(self, "Resources/MainMenu/fondo.png", 0, 0, nil, nil, nil, 0,0)
end

function Background:draw()
  Background.super.draw(self)
end

return Background