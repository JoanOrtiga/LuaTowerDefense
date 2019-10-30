local Tower = Tower or require "Classes/tower"

function love.mousepressed( x, y, button, istouch, presses )
  if button == 1 then
    local fx = math.floor(x / 50)
    local fy = math.floor(y / 50)
        
    if(map[fx+1][fy+1] == 1 and towerMap[fx+1][fy+1] == nil) then
      local Towerx = Tower(fx,fy)
      towerMap[fx+1][fy+1] = Towerx
    end    
  end
end
