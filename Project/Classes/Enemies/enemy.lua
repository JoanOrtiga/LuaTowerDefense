local Actor = Actor or require "Lib/actor"
local Enemy = Actor:extend()

function Enemy:new(image, eSpeed)
  Enemy.super.new(self, image or "Resources/sampleEnemy.png", 125,25, eSpeed)
  self.forward.x = 0
  self.forward.y = 1
end

function Enemy:update(dt)
  Enemy.super.update(self, dt)
  Enemy.move(self)
end

function Enemy:draw()
  Enemy.super.draw(self) 
end


function Enemy:move()  
  
  local fx = math.floor(self.position.x / 50) + 1
  local fy = math.floor(self.position.y / 50) + 1
    
 -- if((tonumber(string.format("%.2f",self.position.y / 50)) > math.floor(self.position.y / 50) + 0.51) and (self.forward.y == 1)) then
  
  if((tonumber(string.format("%.1f",self.position.y / 50)) == math.floor(self.position.y / 50) + 0.5) and (self.forward.y == 1 or self.forward.y == -1)) then

    if(not(map[fx][fy + self.forward.y] == 0)) then
      if(map[fx+1][fy] == 0) then
        self.forward.y = 0
        self.forward.x = 1
      elseif(map[fx-1][fy] == 0) then
        self.forward.y = 0
        self.forward.x = -1
      end
    end
  
  elseif(tonumber(string.format("%.1f",self.position.x / 50)) == math.floor(self.position.x / 50) + 0.5) and (self.forward.x == 1 or self.forward.x == -1) then
    if(not(map[fx + self.forward.x][fy] == 0)) then    
      if(map[fx][fy+1] == 0) then
        self.forward.y = 1
        self.forward.x = 0
      elseif(map[fx][fy-1] == 0) then
        self.forward.y = -1
        self.forward.x = 0
      end
    end
  end

      if map[fx][fy] == 3 or map[fx][fy] == 3 and (tonumber(string.format("%.1f",self.position.x / 50)) == math.floor(self.position.x / 50) + 0.5 and (tonumber(string.format("%.1f",self.position.y / 50)) == math.floor(self.position.y / 50) + 0.5)) then
        self.delete = true
      end
  
end


return Enemy