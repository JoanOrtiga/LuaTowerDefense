sceneItems = {}
towerMap = {{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{}}
enemies = {}
bullets = {}
clickedSquare = { x = 1, y = 1 }


pauseGame = false
  
local Tower = Tower or require("Classes/Towers/tower")
local ShopBox = ShopBox or require("Classes/HUD/shopBox")
local BuyTower1 = BuyTower1 or require("Classes/HUD/ShopButtons/buyArcherTower")
local ClickedSquare = ClickedSquare or require("Classes/clickedSquare")
local Background = Background or require("Classes/Background")
local Enemy = Enemy or require("Classes/Enemies/skeleton")
local Timer = Timer or require("Lib/timer")

require("Data/data")

function spawnEnemy()
  local enemy = Enemy(nil, 125, 25)
  table.insert(enemies, enemy)
end


function love.load()
  require("Classes/mousehandling")  
 
  sampleFont = love.graphics.newFont('Resources/Fonts/pong.ttf', 15)
  love.graphics.setFont(sampleFont)
 
  ShopBoxHUD = ShopBox()
  --table.insert(sceneItems, ShopBoxHUD)
  
  Backgrounds = Background()
  
  ClickedSqr = ClickedSquare(clickedSquare.x, clickedSquare.y)
  
  sceneItems.timers = Timer(1,spawnEnemy,true)
end
 
function love.update(dt)
  
  if(pauseGame == false) then
  
  for  k,v in pairs(sceneItems) do
    v:update(dt)
    if(v.delete) then
        table.remove(sceneItems, k)
    end
 end
 
  for k,v in pairs(towerMap) do
    for x,z in pairs(v) do
      z:update(dt)
      if(z.delete) then
        towerMap[k][x] = nil
      end
    end
  end
  
  for k,v in pairs(enemies) do
    v:update(dt)
    if(v.delete) then
        table.remove(enemies, k)
    end
  end
  
  for k,v in pairs(bullets) do
    v:update(dt)
    if(v.delete) then
        table.remove(bullets, k)
    end
  end

  ClickedSqr:update(dt)
  end
end
 
function love.draw()
  
  Backgrounds:draw()
  
    ClickedSqr:draw()
 
  
  love.graphics.setColor(0,0,0,100)
	for x=1, #map do
		for y=1, #map[x] do
			if map[x][y] == 1 then
				love.graphics.rectangle("line", x * gridSizeX - gridSizeX, y * gridSizeY - gridSizeY, gridSizeX, gridSizeY)
			end
		end
	end
  love.graphics.setColor(255,255,255,100)

  ShopBoxHUD:draw()


  for k,v in pairs(towerMap) do
    for x,z in pairs(v) do
      z:draw()
    end
  end
  
  for k,v in pairs(enemies) do
    v:draw()
  end
  
  for k,v in pairs(bullets) do
    v:draw()
  end
  
  
  for  k,v in pairs(sceneItems) do
  v:draw()
 end
 
end

