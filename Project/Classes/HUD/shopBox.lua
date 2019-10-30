local Actor = Actor or require "Lib/actor"
local Vector = Vector or require "Lib/vector"
local ShopBox = Actor:extend()

function ShopBox:new()
  ShopBox.super.new(self, "Resources/shopMenu.png", 800,0,nil, nil, nil, 0, 0)
end

function ShopBox:update(dt)
  
end

function ShopBox:draw()
  ShopBox.super.draw(self)
end

return ShopBox