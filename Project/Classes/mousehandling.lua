function love.mousepressed( x, y, button, istouch, presses )
  if button == 1 and x < 800 then
    local fx = math.floor(x / 50) + 1
    local fy = math.floor(y / 50) + 1
        
    clickedSquare.x = fx
    clickedSquare.y = fy   
      
    ClickedSqr.position.x = fx * 50 - 50
    ClickedSqr.position.y = fy * 50 - 50
    
  end
end
