sceneItems = {}
towerMap = {{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{}}
clickedSquare = { x = 0, y = 0 }
  
local Tower = Tower or require("Classes/tower")
local ShopBox = ShopBox or require("Classes/HUD/shopBox")
local BuyTower1 = BuyTower1 or require("Classes/HUD/ShopButtons/buyTower1")


function love.load()
  require("Data/data")
  require("Classes/mousehandling")  
  
  local ShopBoxHUD = ShopBox()
  table.insert(sceneItems, ShopBoxHUD)
  
 -- local BuyTower1 = BuyTower1()
 -- table.insert(sceneItems, BuyTower1)
  
  
end
 
function love.update(dt)
	player.act_y = player.act_y - ((player.act_y - player.grid_y) * player.speed * dt)
	player.act_x = player.act_x - ((player.act_x - player.grid_x) * player.speed * dt)
  
  for  k,v in pairs(sceneItems) do
    v:update(dt)
 end
 
  for k,v in pairs(towerMap) do
    for x,z in pairs(v) do
      z:draw()
    end
  end
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
  
 for  k,v in pairs(sceneItems) do
  v:draw()
 end
 
  for k,v in pairs(towerMap) do
    for x,z in pairs(v) do
      z:draw()
    end
  end
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



