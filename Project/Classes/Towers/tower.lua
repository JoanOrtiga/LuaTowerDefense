local Actor = Actor or require "Lib/actor"
local Timer = Timer or require "Lib/timer"
local Tower = Actor:extend()

local ArrowBullet = ArrowBullet or require "Classes/Bullets/arrowBullet"
local MageBullet = MageBullet or require "Classes/Bullets/mageBullet"
local AspersorBullet = AspersorBullet or require "Classes/Bullets/canonBall"
local SniperBullet = SniperBullet or require "Classes/Bullets/sniperbullet"



function Tower:new(image, xTable,yTable, cost, radius, attackSpeed, Dmg, typeTower)
  Tower.super.new(self, image or "Resources/sampleTowers.png",xTable * 50 - 50 + 25,yTable * 50 - 50 + 25)
  
  self.typeTower = typeTower or "sampleTower"
  self.cost = cost or 20
  self.radius = radius or 50
  self.level = 1
  self.attackSpeed = attackSpeed or 1
  self.timer = self.attackSpeed
  self.attackDmg = Dmg or 50
  self.shooting = false
  
  self.delete = false
end

function Tower:update(dt, typeBullet)
  for k,v in pairs(enemies) do
    if(Tower.findEnemy(self, v.position)) then
      if(self.shooting == false) then
        self.shooting = true
        Tower.createBullets(self, k, typeBullet)
        break
      end
    end
  end
  
  if(self.shooting == true) then
    self.timer = self.timer - dt
    if(self.timer <= 0) then
      self.shooting = false
      self.timer = self.attackSpeed
    end
  end
end


function Tower:createBullets(k, typeBullet)
  if(typeBullet == "archer") then
    local bullet = ArrowBullet(self.position, k, self.attackDmg)
     table.insert(bullets, bullet)

  elseif(typeBullet == "mage") then
    local bullet = MageBullet(self.position, k, self.attackDmg, self.radius)
     table.insert(bullets, bullet)
  elseif(typeBullet == "aspersor") then
    local bullet = AspersorBullet(self.position, 0, -1, self.attackDmg,self.radius)
     table.insert(bullets, bullet)
     bullet = AspersorBullet(self.position, 0, 1, self.attackDmg,self.radius)
     table.insert(bullets, bullet)
     bullet = AspersorBullet(self.position, -1, 1, self.attackDmg,self.radius)
     table.insert(bullets, bullet)
     bullet = AspersorBullet(self.position, 1, 0, self.attackDmg,self.radius)
     table.insert(bullets, bullet)
     bullet = AspersorBullet(self.position, -1, 0, self.attackDmg,self.radius)
     table.insert(bullets, bullet)
     bullet = AspersorBullet(self.position, 1, -1, self.attackDmg,self.radius)
     table.insert(bullets, bullet)
     bullet = AspersorBullet(self.position, -1, -1, self.attackDmg,self.radius)
     table.insert(bullets, bullet)
     bullet = AspersorBullet(self.position, 1, 1, self.attackDmg,self.radius)
     table.insert(bullets, bullet)
  elseif(typeBullet == "sniper") then
    local bullet = SniperBullet(self.position, k, self.attackDmg, self.radius)
     table.insert(bullets, bullet)
  end
end

function Tower:draw()
  Tower.super.draw(self) 
end

function Tower:findEnemy(circleB, enemyRange)
  local dist = (self.position.x - circleB.x)^2 + (self.position.y - circleB.y)^2
  return dist <= (self.radius + (enemyRange or 50))^2
end

function Tower:changeLevel(level, art)
  if(level == 2) then
    self.image = love.graphics.newImage(art[level])
  end
end
return Tower