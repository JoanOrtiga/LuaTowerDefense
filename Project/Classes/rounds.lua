local Object = Object or require "Lib/object"
local Rounds = Object:extend()

local Timer = Timer or require("Lib/timer")

local changeRound

function Rounds:new(level)
  self.round = 1
  
  rounds:nextRound()
end

function rounds:nextRound()
  if(self.round == 1) then
    sceneItems.roundTimers = Timer(1,spawnEnemy,true)
  end
end

return rounds



function spawnEnemy()
  local enemy = Enemy(nil, 125, 25)
  table.insert(enemies, enemy)
end