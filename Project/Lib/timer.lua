Object = Object or require "Lib/object"
Timer = Object:extend()

function Timer:new(time, fun, rp, timesToDie)
  self.f = fun
  self.tAct = time
  self.tFin = time
  self.rep = rp
  self.timesToDie = timesToDie
  self.timesSpawned = 0
end

function Timer:update(dt)
  self.tAct = self.tAct - dt
  
  if(self.tAct < 0) then 
    self.f()
    
    if self.rep == true then
      self.tAct = self.tFin
      self.timesSpawned = self.timesSpawned + 1
      
      if(self.timesSpawned >= self.timesToDie) then
        for k, v in pairs(spawners) do 
        if v == self then
          e = k
        end
      end 
      
      if(e~=nil) then
        table.remove(spawners,e)
      end
      end
      
    else
      for k, v in pairs(spawners) do 
        if v == self then
          e = k
        end
      end 
      
      if(e~=nil) then
        table.remove(spawners,e)
      end
    end
  end
  
end

function Timer:draw()
  return
end

return Timer