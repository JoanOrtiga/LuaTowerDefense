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
local playButton = playButton or require("Classes/HUD/MainMenu/PlayButton")
local MainMenu = MainMenu or require("Classes/HUD/MainMenu/mainMenu")

local Rounds = Rounds or require("Classes/rounds")

require("Data/data")

GameScene = 1

function love.load()  
        require("Classes/mousehandling")  

  sampleFont = love.graphics.newFont('Resources/Fonts/pong.ttf', 15)
  sampleFont2 = love.graphics.newFont('Resources/Fonts/pong.ttf', 50)
  love.graphics.setFont(sampleFont)
  
  changeScene(1)
end
 
function love.update(dt)
  
  if(GameScene == 1) then
    for  k,v in pairs(sceneItems) do
    v:update(dt)
    if(v.delete) then
        table.remove(sceneItems, k)
    end
 end
  
elseif(GameScene == 2) then
  
  if(pauseGame == false) then
  
  Round:update(dt)
  
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

  
end
 
function love.draw()
  
  if(GameScene == 1) then
    
    for  k,v in pairs(sceneItems) do
    v:draw()
    end
    
  elseif(GameScene == 2) then
    
    
  Backgrounds:draw()
  
    ClickedSqr:draw()
 
  
  love.graphics.setColor(255,255,255,0.1)
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
  
 
end





function changeScene(newScene)
  
  for  k,v in pairs(sceneItems) do
    sceneItems[k] = nil
 end
 
  for k,v in pairs(towerMap) do
    for x,z in pairs(v) do
        towerMap[k][x] = nil
    end
  end
  
  for k,v in pairs(enemies) do
    enemies[k] = nil

  end
  
  for k,v in pairs(bullets) do
    bullets[k] = nil
  end
  
  if(newScene == 1) then
    local DoMainMenu = MainMenu()
    table.insert(sceneItems, DoMainMenu)
    
    function love.mousepressed()
    end
  GameScene = 1
elseif(newScene == 2) then
  restartMouseHandling()
  GameScene = 2

clickedSquare = { x = 1, y = 1 }
      ShopBoxHUD = ShopBox()
  
      Backgrounds = Background()
  
      ClickedSqr = ClickedSquare(clickedSquare.x, clickedSquare.y)
  
      Round = Rounds(1, 2)
      
  end
  
end