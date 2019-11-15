local Actor = Actor or require "Lib/actor"
local Enemy = Actor:extend()

ids = 0

local enemyHealthBar = enemyHealthBar or require "Classes/Enemies/enemyHealthBar"

function Enemy:new(image, posX, posY, speed, health, revenue)
  Enemy.super.new(self, image or "Resources/sampleEnemy.png", posX or 125, posY or 25, speed or 200)
  
  self.forward.x = 0
  self.forward.y = 1
  
  self.health = health or 150
  self.originalSpeed = speed
  
  self.revenue = revenue or 5
  
  self.healthBar = enemyHealthBar(self.position, self.health)
  self.dead = false
  
  self.id = ids + 1
  ids = ids + 1
  
  if(ids > 1000) then
    ids = 0
  end
  
  self.isSlowed = false
end

function Enemy:update(dt)
  Enemy.super.update(self, dt)
  Enemy.move3(self)
  
  if(self.health < 0 and self.dead == false) then
    self.dead = true
    Round.Money = Round.Money + self.revenue
    self.delete = true
  end
  
  self.healthBar.update(self.healthBar, dt, self.position, self.health)
end

function Enemy:draw()
  Enemy.super.draw(self) 
 --love.graphics.circle("line", self.position.x, self.position.y, 10)
  
 self.healthBar:draw(self.healthBar)
end


function Enemy:move3()
  local fx = math.floor(self.position.x / 50) + 1
  local fy = math.floor(self.position.y / 50) + 1
  
  if(map[fx][fy] == 1) then
    self.delete = true
  end
  
  if self.forward.x == 1 then
    if tonumber(string.format("%.2f",self.position.x / 50)) > math.floor(self.position.x / 50) + 0.51 then
      if map[fx + 1][fy] == 1 then
        if map[fx][fy + 1] == 0 then
          self.rot = self.rot + math.rad(90)
          self.forward.x = 0
          self.forward.y = 1
        elseif map[fx][fy - 1] == 0 then
          self.rot = self.rot + math.rad(-90)
          self.forward.x = 0
          self.forward.y = -1
        end
      end
    end
  elseif self.forward.x == -1 then
    if tonumber(string.format("%.2f",self.position.x / 50)) < math.floor(self.position.x/ 50) + 0.49 then
      if map[fx - 1][fy] == 1 then
        if map[fx][fy + 1] == 0 then
          self.rot = self.rot + math.rad(-90)
          self.forward.x = 0
          self.forward.y = 1
        elseif map[fx][fy - 1] == 0 then
          self.rot = self.rot + math.rad(90)
          self.forward.x = 0
          self.forward.y = -1
        end
      end
    end
  elseif self.forward.y == 1 then
    if tonumber(string.format("%.2f",self.position.y / 50)) > math.floor(self.position.y / 50) + 0.51 then
      if map[fx][fy + 1] == 1 then
        if map[fx + 1][fy] == 0 then
          self.rot = self.rot + math.rad(-90)
          self.forward.x = 1
          self.forward.y = 0
        elseif map[fx - 1][fy] == 0 then
          self.rot = self.rot + math.rad(90)
          self.forward.x = -1
          self.forward.y = 0
        end
      end
    end
  elseif self.forward.y == -1 then
    if tonumber(string.format("%.2f",self.position.y / 50)) < math.floor(self.position.y/ 50) + 0.49 then
      if map[fx][fy - 1] == 1 then
        if map[fx + 1][fy] == 0 then
          self.rot = self.rot + math.rad(90)
          self.forward.x = 1
          self.forward.y = 0
        elseif map[fx - 1][fy] == 0 then
          self.rot = self.rot + math.rad(-90)
          self.forward.x = -1
          self.forward.y = 0
        end
      end
    end
  end
  
   if map[fx][fy] == 3 or map[fx][fy] == 3 and (tonumber(string.format("%.1f",self.position.x / 50)) == math.floor(self.position.x / 50) + 0.5 and (tonumber(string.format("%.1f",self.position.y / 50)) == math.floor(self.position.y / 50) + 0.5)) then
     Round.PlayerHP = Round.PlayerHP - 1
     self.delete = true
   end  
   
   if self.forward.x == 1 or self.forward.x == -1 then
    self.position.y = math.floor(self.position.y / 50) * 50 + 25
  elseif self.forward.y == 1 or self.forward.y == -1 then
    self.position.x = math.floor(self.position.x / 50) * 50 + 25
  end
end

function Enemy:slowed(slowLevel)
  if(self.isSlowed == false) then
    self.isSlowed = true
    if(slowLevel == 1) then
      self.speed = self.speed - Data.slowTower1.slow
    elseif(slowLevel == 2) then
      self.speed = self.speed - Data.slowTower2.slow
    end
    
    if(self.speed < 30) then
      self.speed = 30
    end
  end
end

function Enemy:unSlowed()
  if(self.isSlowed == true) then
      self.isSlowed = false
      self.speed = self.originalSpeed
    end
end

return Enemy