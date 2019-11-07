local Actor = Actor or require "Lib/actor"
local Timer = Timer or require "Lib/timer"
local Tower = Actor:extend()

local Bullet = Bullet or require "Classes/Bullets/bullet"

function Tower:new(image, xTable,yTable, cost, radius)
  Tower.super.new(self, image or "Resources/sampleTowers.png",xTable * 50 - 50 + 25,yTable * 50 - 50 + 25)
  self.cost = cost or 20
  self.radius = radius or 50
  self.level = 1
  self.attackSpeed = 0.5
  self.timer = self.attackSpeed
  self.shooting = false
end

function Tower:update(dt)
  for k,v in pairs(enemies) do
    if(Tower.findEnemy(self, v.position)) then
      if(self.shooting == false) then
        self.shooting = true
        local bullet = Bullet(self.position, k)
        table.insert(bullets, bullet)
      else
        self.timer = self.timer - dt
        
        if(self.timer <= 0) then
          self.shooting = false
          self.timer = self.attackSpeed
        end
      end
    end
  end
end

function Tower:createBullets(position, k)
  
end

function Tower:draw()
  Tower.super.draw(self) 
end

function Tower:findEnemy(circleB)
  local dist = (self.position.x - circleB.x)^2 + (self.position.y - circleB.y)^2
  return dist <= (self.radius + 50)^2
end

return Tower