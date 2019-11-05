sceneItems = {}
towerMap = {{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{}}
clickedSquare = { x = 1, y = 1 }
  
local Tower = Tower or require("Classes/Towers/tower")
local ShopBox = ShopBox or require("Classes/HUD/shopBox")
local BuyTower1 = BuyTower1 or require("Classes/HUD/ShopButtons/buyTower1")
local ClickedSquare = ClickedSquare or require("Classes/clickedSquare")
local Background = Background or require("Classes/Background")


function love.load()
  require("Data/data")
  require("Classes/mousehandling")  
  
  local ShopBoxHUD = ShopBox()
  table.insert(sceneItems, ShopBoxHUD)
  
  Backgrounds = Background()

  
  sceneItems.ClickedSqr = ClickedSquare(clickedSquare.x, clickedSquare.y)
  
  

end
 
function love.update(dt)
  for  k,v in pairs(sceneItems) do
    v:update(dt)
 end
 
  for k,v in pairs(towerMap) do
    for x,z in pairs(v) do
      z:update(dt)
    end
  end
end
 
function love.draw()
  
  Backgrounds:draw()
  
  
  love.graphics.setColor(0,0,0,100)
	for x=1, #map do
		for y=1, #map[x] do
			if map[x][y] == 1 then
				love.graphics.rectangle("line", x * gridSizeX - gridSizeX, y * gridSizeY - gridSizeY, gridSizeX, gridSizeY)
			end
		end
	end
  
    love.graphics.setColor(255,255,255,100)

  
 for  k,v in pairs(sceneItems) do
  v:draw()
 end
 
  for k,v in pairs(towerMap) do
    for x,z in pairs(v) do
      z:draw()
    end
  end
end

