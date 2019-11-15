local Object = Object or require "Lib/object"
local Rounds = Object:extend()

local Timer = Timer or require("Lib/timer")


local Skeleton = Skeleton or require "Classes/Enemies/skeleton"
local Enemy = Enemy or require "Classes/Enemies/enemy"

function Rounds:new(level)
  self.round = 1
  self.level = level
  
  self.RoundActive = false
  
  self.PlayerHP = 15
  self.Money = 100
  
  Rounds.nextRound(self)
end

function Rounds:update(dt)
  if(self.PlayerHP < 0) then
    changeScene(1)
  end
  
  self.timer = self.timer - dt
  
  if(self.timer <= 0) then
    if(self.RoundActive == false) then
      Round.changeRound(self)
    else
      self.timer = 10
      sceneItems.skeletonSpawner = nil
      sceneItems.enemySpawner = nil
      self.RoundActive = false
    end
  end
end

function Rounds:nextRound() 
  if(self.level == 1) then
    if(self.round == 1) then
      sceneItems.skeletonSpawner = Timer(1,spawnSkeleton,true)
      self.timer = 7
      self.RoundActive = true
    elseif(self.round == 2) then
      self.RoundActive = true
      sceneItems.skeletonSpawner = Timer(1,spawnSkeleton,true)
      --sceneItems.enemySpawner = Timer(1, spawnEnemy, true)
      self.timer = 500
    elseif(self.round == 3) then
      
      
    elseif(self.round == 4) then
    
    elseif(self.round == 5) then
    
    elseif(self.round == 6) then
    
    elseif(self.round == 7) then
    
    elseif(self.round == 8) then
    
    elseif(self.round == 9) then
    
    elseif(self.round == 10) then
    
    end
  end
end

function Rounds:changeRound()
  self.round = self.round + 1
  
  Rounds.nextRound(self)
end


function spawnEnemy()
  local enemy = Enemy()
  table.insert(enemies, enemy)
end

function spawnSkeleton()
  local enemy = Skeleton(nil, 125, 25)
  table.insert(enemies, enemy)
end

return Rounds



