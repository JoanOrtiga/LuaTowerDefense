local Bullet = Bullet or require "Classes/Bullets/bullet"
local mageBullet = Bullet:extend()

function mageBullet:new(position, enemy, damage)
  mageBullet.super.new(self, "Resources/Bullets/mageBullet.png", position, enemy, damage)
  
  self.speed = 250
  self.radius = Data.mageTower.damageRadius
end

function mageBullet:update(dt)
  self.position = self.position + self.forward * self.speed * dt

  
  for k,v in pairs(enemies) do
    if(mageBullet.findEnemy(self, v.position)) then
      v.health = v.health - Data.mageTower.attackDamage
    end
  end
  
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
    
    if(enemies[self.enemyToChase].health < 0) then
      self.delete = true
    end
  
    
    Bullet.chaseEnemy(self)
    
    if(Bullet.super.intersect(self, enemies[self.enemyToChase])) then
      self.delete = true
    end
  end
end

function mageBullet:draw()
  mageBullet.super.draw(self)
  
   --love.graphics.circle("line", self.position.x, self.position.y, self.radius)
end

function mageBullet:findEnemy(circleB)
  local dist = (self.position.x - circleB.x)^2 + (self.position.y - circleB.y)^2
  return dist <= (self.radius + 30)^2
end

return mageBullet