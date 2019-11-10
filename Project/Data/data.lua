map = {
		{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0 },
		{ 2, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0 },
		{ 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 0, 1, 0 },
		{ 0, 0, 0, 0, 1, 0, 1, 1, 0, 1, 0, 0, 1, 0, 1, 0 },
		{ 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 0 },
		{ 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 1, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 1, 0 },
		{ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0 },
		{ 3, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 0, 1, 0 },
		{ 1, 1, 1, 0, 1, 1, 0, 1, 0, 1, 1, 1, 1, 0, 1, 0 },
		{ 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0 },
    { 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0 },
    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
	}
  
--towerMap = {}
  
  gridSizeX = 50
  gridSizeY = 50
  
  player = {
		grid_x = 0,
		grid_y = 0,
		act_x = 0,
		act_y = 0,
		speed = 10
	}
  
  
Data = {}

--ENEMIEs
Data.skeletonEnemy = {}
Data.skeletonEnemy.health = 100
Data.skeletonEnemy.speed = 100
  
--TOWERS

---archerTower LVL 1---
Data.archerTower = {}
Data.archerTower.cost = 20
Data.archerTower.radius = 150 -- en pixels
Data.archerTower.attackDamage = 50
Data.archerTower.attackSpeed = 1

---archerTower LVL 2---
Data.archerTower2 = {}
Data.archerTower2.cost = 20
Data.archerTower2.radius = 60 -- en pixels
Data.archerTower2.attackDamage = 100
Data.archerTower2.attackSpeed = 0.9

  
  