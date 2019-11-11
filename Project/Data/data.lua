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

---archerTower---
---LVL 1---
Data.archerTower = {}
Data.archerTower.cost = 20
Data.archerTower.radius = 150 -- en pixels
Data.archerTower.attackDamage = 50
Data.archerTower.attackSpeed = 1
--- LVL 2---
Data.archerTower2 = {}
Data.archerTower2.cost = 5
Data.archerTower2.radius = 150 -- en pixels
Data.archerTower2.attackDamage = 65
Data.archerTower2.attackSpeed = 0.8



---aspersor---
---LVL 1---
Data.aspersor = {}
Data.aspersor.cost = 25
Data.aspersor.radius = 100
Data.aspersor.attackDamage = 20
Data.aspersor.attackSpeed = 0.5
---LVL 2---
Data.aspersor2 = {}
Data.aspersor2.cost = 5
Data.aspersor2.radius = 100
Data.aspersor2.attackDamage = 25
Data.aspersor2.attackSpeed = 0.3



---mageTower---
---LVL 1---
Data.mageTower = {}
Data.mageTower.cost = 30
Data.mageTower.radius = 150
Data.mageTower.attackDamage = 65
Data.mageTower.attackSpeed = 1
--- LVL 2---
Data.mageTower2 = {}
Data.mageTower2.cost = 10
Data.mageTower2.radius = 150
Data.mageTower2.attackDamage = 85
Data.mageTower2.attackSpeed = 0.8



---francotirador---
---LVL 1---
Data.francotirador = {}
Data.francotirador.cost = 25
Data.francotirador.radius = 200
Data.francotirador.attackDamage = 70
Data.francotirador.attackSpeed = 1.5
---LVL 2---
Data.francotirador2 = {}
Data.francotirador2.cost = 5
Data.francotirador2.radius = 200
Data.francotirador2.attackDamage = 80
Data.francotirador2.attackSpeed = 1.3



---slow---
---LVL 1---
Data.slow = {}
Data.slow.cost = 35
Data.slow.radius = 80
Data.slow.attackDamage = 100
Data.slow.attackSpeed = 2
---LVL 2---
Data.slow2 = {}
Data.slow2.cost = 10
Data.slow2.radius = 85
Data.slow2.attackDamage = 120
Data.slow2.attackSpeed = 1.8