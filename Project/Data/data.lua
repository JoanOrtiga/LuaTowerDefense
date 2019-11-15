map = {
		{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0 },
		{ 2, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 0, 0, 0, 1, 0 },
		{ 1, 1, 1, 1, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0 },
		{ 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 0, 1, 0 },
		{ 0, 0, 0, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 0, 1, 0 },
		{ 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0 },
		{ 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0, 0 },
		{ 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0 },
		{ 3, 0, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0 },
		{ 1, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0 },
    { 0, 1, 0, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0 },
    { 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0 },
    { 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0 },
	}
  
--towerMap = {}
  
  gridSizeX = 50
  gridSizeY = 50

--Fonts--
sampleFont = love.graphics.newFont('Resources/Fonts/pong.ttf', 15)
sampleFont2 = love.graphics.newFont('Resources/Fonts/pong.ttf', 50)
sampleFont3 = love.graphics.newFont('Resources/Fonts/pong.ttf', 100)
love.graphics.setFont(sampleFont)
  
  
Data = {}

--ENEMIEs
Data.skeletonEnemy = {}
Data.skeletonEnemy.health = 100
Data.skeletonEnemy.speed = 100
Data.skeletonEnemy.revenue = 4

Data.ghostEnemy = {}
Data.ghostEnemy.health = 120
Data.ghostEnemy.speed = 120
Data.ghostEnemy.revenue = 4

Data.demonEnemy = {}
Data.demonEnemy.health = 50
Data.demonEnemy.speed = 300
Data.demonEnemy.revenue = 4

Data.drownedEnemy = {}
Data.drownedEnemy.health = 200
Data.drownedEnemy.speed = 100
Data.drownedEnemy.revenue = 4

Data.swampThingEnemy = {}
Data.swampThingEnemy.health = 250
Data.swampThingEnemy.speed = 60
Data.swampThingEnemy.revenue = 4

--TOWERS



---archerTower LVL 1---
Data.archerTower = {}
Data.archerTower.cost = 20
Data.archerTower.radius = 100 -- en pixels
Data.archerTower.attackDamage = 50
Data.archerTower.attackSpeed = 1

---archerTower LVL 2---
Data.archerTower2 = {}
Data.archerTower2.cost = 20
Data.archerTower2.radius = 120-- en pixels
Data.archerTower2.attackDamage = 100
Data.archerTower2.attackSpeed = 0.9

--mageTower LVL 1---
Data.mageTower = {}
Data.mageTower.cost = 25
Data.mageTower.radius = 150 -- en pixels
Data.mageTower.damageRadius = 30
Data.mageTower.attackDamage = 2
Data.mageTower.attackSpeed = 1

--mageTower LVL 2---
Data.mageTower2 = {}
Data.mageTower2.cost = 25
Data.mageTower2.radius = 150 -- en pixels
Data.mageTower2.damageRadius = 30
Data.mageTower2.attackDamage = 5
Data.mageTower2.attackSpeed = 1

--slowTower LVL 1---
Data.slowTower1 = {}
Data.slowTower1.cost = 55
Data.slowTower1.radius = 150 -- en pixels
Data.slowTower1.slow = 40

--slowTower LVL 2---
Data.slowTower2 = {}
Data.slowTower2.cost = 20
Data.slowTower2.radius = 150 -- en pixels
Data.slowTower2.slow = 60

---360Tower LVL 1---
Data.t360Tower = {}
Data.t360Tower.cost = 20
Data.t360Tower.radius = 80-- en pixels
Data.t360Tower.attackDamage = 30
Data.t360Tower.attackSpeed = 0.9

---360Tower LVL 2---
Data.t360Tower2 = {}
Data.t360Tower2.cost = 20
Data.t360Tower2.radius = 120-- en pixels
Data.t360Tower2.attackDamage = 30
Data.t360Tower2.attackSpeed = 0.9

---360Tower LVL 1---
Data.t360Tower = {}
Data.t360Tower.cost = 20
Data.t360Tower.radius = 80-- en pixels
Data.t360Tower.attackDamage = 30
Data.t360Tower.attackSpeed = 0.9

---SniperTower LVL 1---
Data.sniperTower = {}
Data.sniperTower.cost = 20
Data.sniperTower.radius = 210-- en pixels
Data.sniperTower.attackDamage = 90
Data.sniperTower.attackSpeed = 2

---SniperTower LVL 2---
Data.sniperTower2 = {}
Data.sniperTower2.cost = 20
Data.sniperTower2.radius = 250-- en pixels
Data.sniperTower2.attackDamage = 90
Data.sniperTower2.attackSpeed = 2


--Money Revenue for destroying the tower.
Data.destroyRevenue = 5
Data.initialMoney = 100
Data.PlayerHP = 15
Data.TimeBetweenWaves = 5
--MAP 1 ROUNDS-- {{"tipus enemic", cantitat d'spawns, temps entre spawns}}
Data.map1 = {}
Data.map1.round = {}
Data.map1.round[1] = {{"skeleton", 10, 0.5}}
Data.map1.round[2] = {{"skeleton", 10, 0.5},{"ghost", 5, 1}}
Data.map1.round[3] = {{"skeleton", 40, 0.7}}
Data.map1.round[4] = {{"swampThing", 5, 1}}
Data.map1.round[5] = {{"demon", 5, 1}}
Data.map1.round[6] = {{"demon", 5, 1}}
Data.map1.round[7] = {{"demon", 5, 1}}
Data.map1.round[8] = {{"demon", 5, 1}}
Data.map1.round[9] = {{"demon", 5, 1}}
Data.map1.round[10] = {{"demon", 5, 1}}


