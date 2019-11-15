local Actor = Actor or require "Lib/actor"
local Bullet = Actor:extend()

function Bullet:new(image, position, enemy, damage, speed)
  Bullet.super.new(self, image or "Resources/sampleBullet.png", position.x, position.y, speed or 400, nil,nil,nil,nil,1.5,1.5)
  
  self.enemyToChase = enemy;
  self.enemy = enemies[self.enemyToChase]
  self.damage = damage or 25
end

function Bullet:update(dt)
  Bullet.super.update(self,dt)
  
  if(enemies[self.enemyToChase] == nil) then
    self.delete = true
  else
  
  if(self.enemy.id ~= enemies[self.enemyToChase].id) then
    for k,v in pairs(enemies) do
      if(v.id == self.enemy.id) then
        self.enemyToChase = k
      end
    end
    if(self.enemy.id ~= enemies[self.enemyToChase].id) then
      self.delete = true
    end
  end
  
  
    Bullet.chaseEnemy(self)
    if(Bullet.super.intersect(self, enemies[self.enemyToChase])) then
      enemies[self.enemyToChase].health = enemies[self.enemyToChase].health - self.damage
      if(enemies[self.enemyToChase].health <= 0) then
        Round.Money = Round.Money + enemies[self.enemyToChase].revenue
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