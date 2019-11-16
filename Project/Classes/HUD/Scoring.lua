local shopButton = shopButton or require "Classes/HUD/ShopButtons/shopButton"
local Scoring = shopButton:extend()
local Tower = Tower or require "Classes/Towers/aspersorTower"

function Scoring:new(posX, posY)
  self.
end

function Scoring:update(dt)
end

function Scoring:draw()
  Scoring.super.draw(self)
end

return Scoring