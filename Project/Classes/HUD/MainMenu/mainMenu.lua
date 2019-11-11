local HUDB = HUDB or require "Classes/HUD/HUDButtons"
local MainMenu = HUDB:extend()



local PlayButton = PlayButton or require "Classes/HUD/MainMenu/PlayButton"
local Options = Options or require "Classes/HUD/MainMenu/Options"
local Exit = Exit or require "Classes/HUD/MainMenu/Exit"
local Background = Background or require "Classes/HUD/MainMenu/BackgroundMenu"

function MainMenu:new()
  self.playButton = PlayButton()  
  self.exitButton = Exit()
  self.background = Background()
  self.options = Options()
end

function MainMenu:update(dt)
  self.playButton:update(dt)
  self.exitButton:update(dt)
end

function MainMenu:draw()
  self.background:draw()
  self.playButton:draw()
  self.exitButton:draw()
  self.options:draw()
end

return MainMenu