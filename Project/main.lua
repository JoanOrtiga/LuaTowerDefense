  local Tower = require("Classes/tower")

function love.load()
  require("Data/data")
  require("Classes/mousehandling")
  

  
  sceneItems = {}
  
  sceneItems.tower = Tower()
end
 
function love.update(dt)
	player.act_y = player.act_y - ((player.act_y - player.grid_y) * player.speed * dt)
	player.act_x = player.act_x - ((player.act_x - player.grid_x) * player.speed * dt)
  
  sceneItems.tower:update(dt)
end
 
function love.draw()
  --PLAYER
	love.graphics.rectangle("fill", player.act_x, player.act_y, gridSizeX, gridSizeY)
  
	for y=1, #map do
		for x=1, #map[y] do
			if map[y][x] == 1 then
				love.graphics.rectangle("line", x * gridSizeX - gridSizeX, y * gridSizeY - gridSizeY, gridSizeX, gridSizeY)
			end
		end
	end
  
  sceneItems.tower:draw()
  
end
 
function love.keypressed(key)
	if key == "up" then
			player.grid_y = player.grid_y - gridSizeY
	elseif key == "down" then
			player.grid_y = player.grid_y + gridSizeY
	elseif key == "left" then
			player.grid_x = player.grid_x - gridSizeX
	elseif key == "right" then
			player.grid_x = player.grid_x + gridSizeX
	end
end
