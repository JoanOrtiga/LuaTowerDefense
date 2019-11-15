local Tower = Tower or require "Classes/Towers/tower"
local Slow = Tower:extend()
local Timer = Timer or require"Lib/timer"

local Bullet = Bullet or require "Classes/Bullets/mageBullet"

local lvl = {"Resources/Towers/slowTower1.png", "Resources/Towers/slowTower2.png"}

function Slow:new(xTable,yTable)
  Slow.super.new(self, lvl[1], xTable, yTable, Data.slowTower1.cost, Data.slowTower1.radius, nil, nil, "slowTower") 
end

function Slow:update(dt)
  for k,v in pairs(enemies) do
    if(Tower.findEnemy(self, v.position, 10)) then
      v:slowed(self.level)
    else
      v:unSlowed()
    end
  end
end

function Slow:draw()
    Slow.super.draw(self) 
end

function Slow:changeLevel()
  if(Round.Money - Data.slowTower2.cost >= 0) then
    Round.Money = Round.Money - Data.slowTower2.cost
    Slow.super.changeLevel(self, self.level, lvl)
  
    self.radius = Data.slowTower2.radius
    
    for k,v in pairs(enemies) do
    v:unSlowed()
  end
  end
end

return Slow