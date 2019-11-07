local Actor = Actor or require "Lib/actor"
local Bullet = Actor:extend()

function Bullet:new(position, enemy)
  Bullet.super.new(self, "Resources/arrow_bullet.png", position.x, position.y, 400, nil,nil,nil,nil,1.5,1.5)
  
  self.enemyToChase = enemy;
  self.bulletSpeed = 3;
  self.damage = 50
end

function Bullet:update(dt)
  Bullet.super.update(self,dt)
  if(enemies[self.enemyToChase] == nil) then
    self.delete = true
  else
  Bullet.chaseEnemy(self)
  if(Bullet.super.intersect(self, enemies[self.enemyToChase])) then
    enemies[self.enemyToChase].health = enemies[self.enemyToChase].health - self.damage
    
    if(enemies[self.enemyToChase].health <= 0) then
    enemies[self.enemyToChase] = nil
    
    end
  self.delete = true
  end
  end
end

function Bullet:draw()
  Bullet.super.draw(self)
end


function Bullet:chaseEnemy()
  
  local angle = math.atan2((enemies[self.enemyToChase].position.y - self.position.y), (enemies[self.enemyToChase].position.x - self.position.x))
  
    self.rot = angle
  
		self.forward.x = math.cos(angle)
		self.forward.y = math.sin(angle)
end



return Bullet