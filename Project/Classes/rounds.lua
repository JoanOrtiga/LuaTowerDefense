local Object = Object or require "Lib/object"
local Rounds = Object:extend()

local Timer = Timer or require("Lib/timer")


local Skeleton = Skeleton or require "Classes/Enemies/skeleton"
local Drowned = Drowned or require "Classes/Enemies/drowned"
local SwampThing = SwampThing or require "Classes/Enemies/swampThing"
local Ghost = Ghost or require "Classes/Enemies/ghost"
local Demon = Demon or require "Classes/Enemies/demon"
--local Enemy = Enemy or require "Classes/Enemies/enemy"

spawners = {}

function Rounds:new(level)
  self.round = 1
  self.level = level
  
  self.RoundActive = false
  
  self.PlayerHP = Data.PlayerHP
  self.Money = Data.initialMoney
  
  self.timer = nil
  
  Rounds.nextRound(self)
end

function Rounds:update(dt)
  if(self.PlayerHP < 0) then
    changeScene(1)
  end
  
  for k,v in pairs(spawners) do
    v:update(dt)
  end
  
  if(#spawners == 0) then
    if(self.roundActive == true) then
      self.roundActive = false
      self.timer = Data.TimeBetweenWaves
    end
    self.timer = self.timer - dt
    
     if(self.timer <= 0) then
    if(self.roundActive == false) then
      Round.changeRound(self)
    end
  end
  end
  
 
end

function Rounds:nextRound() 
  self.roundActive = true
  
  if(self.level == 1) then
    if(Data.map1.round[self.round] ~= nil) then
      for k,v in pairs(Data.map1.round[self.round]) do
        Rounds.setSpawners(self, Data.map1.round[self.round][k])   
      end
    end
  end
  
end



function Rounds:setSpawners(spawn)
  if(spawn[1] == "skeleton") then
    table.insert(spawners, Timer(spawn[3], spawnSkeleton, true, spawn[2]))
  elseif(spawn[1] == "ghost") then
    table.insert(spawners, Timer(spawn[3], spawnGhost, true, spawn[2]))
  elseif(spawn[1] == "drowned") then
    table.insert(spawners, Timer(spawn[3], spawnDrowned, true, spawn[2]))
  elseif(spawn[1] == "demon") then
    table.insert(spawners, Timer(spawn[3], spawnDemon, true, spawn[2]))
  elseif(spawn[1] == "swampThing") then
    table.insert(spawners, Timer(spawn[3], spawnSwampThing, true, spawn[2]))
  end
end

function Rounds:changeRound()
  self.round = self.round + 1
  
  Rounds.nextRound(self)
end


function spawnEnemy()
  local enemy = Enemy(125,25)
  table.insert(enemies, enemy)
end

function spawnDrowned()
  local enemy = Drowned(125, 25)
  table.insert(enemies, enemy)
end

function spawnDemon()
  local enemy = Demon(125, 25)
  table.insert(enemies, enemy)
end

function spawnSwampThing()
  local enemy = SwampThing(125, 25)
  table.insert(enemies, enemy)
end

function spawnGhost()
  local enemy = Ghost(125, 25)
  table.insert(enemies, enemy)
end

function spawnSkeleton()
  local enemy = Skeleton(125, 25)
  table.insert(enemies, enemy)
end

return Rounds



