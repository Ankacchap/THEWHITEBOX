-- BEGAN OF THE  CODE  --

local scene = {}

function scene:load()

camera = require 'Library/camera'

cam = camera()

-- end text -- 

textx = 660

texty = 230

-- poll --

pollx = 750

polly = 100

pollwidth = 50

pollheight = 200

-- OPCITICAL --

opcitialx = 350 

opcitialy = 250

opcitialheight = 30

opcitialwidth = 50

-- pillar --

pix = 450

piy = 210

piwidth = 40

piheight = 100

-- stan is end buton where you press-- 

stanx = 650

stany = 250

stanwidth = 50

stanheight = 30

-- SKY  --

skyx = 0

skyy = 30

skyheight = 50

skywidth = 2000

-- land size ---

x = 0

y = 300

height = 20

width = 2000

-- land colidder -- 

colx = 0

coly = 350

colheight = 90

colwidth = 2000

-- player or Squre size & potion --

squreheight = 30

squrewidth = 30

squrex = 300

squrey = 100

-- WORLD --

world = love.physics.newWorld(0,50.81*100,true)

-- BODY --

sky = love.physics.newBody(world, skyx , skyy,"static")

opcitial =  love.physics.newBody(world, opcitialx , opcitialy,"static")

pi =  love.physics.newBody(world, pix , piy,"dynamic")

stan = love.physics.newBody(world, stanx , stany,"dynamic")

poll = love.physics.newBody(world, pollx , polly,"static")

player = love.physics.newBody(world,squrex,squrey,"dynamic")

land = love.physics.newBody(world, x , y,"dynamic")

col = love.physics.newBody(world, colx , coly,"static")

-- SHAPE --

skyshape = love.physics.newRectangleShape(skywidth , skyheight)

opcitialshape =

love.physics.newRectangleShape(opcitialwidth , opcitialheight)

pishape = love.physics.newRectangleShape(piwidth , piheight)

stanshape = love.physics.newRectangleShape(stanwidth, stanheight)

pollshape = love.physics.newRectangleShape(pollwidth, pollheight)

playershape = love.physics.newRectangleShape(squrewidth , squreheight)

landshape = love.physics.newRectangleShape(width , height)

colshape = love.physics.newRectangleShape(colwidth , colheight)

-- Fixture --

skyfixture = love.physics.newFixture(sky,skyshape,1)

opcitialfixture = love.physics.newFixture(opcitial,opcitialshape,2)

pifixture = love.physics.newFixture(pi,pishape,2)

stanfixture = love.physics.newFixture(stan,stanshape,2)

pollfixture = love.physics.newFixture(poll,pollshape,2)

playerfixture = love.physics.newFixture(player,playershape,1)

landfixture = love.physics.newFixture(land,landshape,1)

colfixture = love.physics.newFixture(col,colshape,1)

end

function scene:update(dt)

  

end

function love.update(dt)

  

world:update(dt)

touching = stan:isTouching(player)

a = 0

b = 0

if 1 == 1 then 

stan:applyLinearImpulse(a,b)

end

if touching == true then

love.event.quit()

--[[ it helps the things to dirstory 

stan:destroy() 

]]

end

cam:lookAt(player:getX(),player:getY())

end

function scene:draw()

cam:attach()

love.graphics.rectangle("fill",player:getX(), player:getY(), squrewidth, squreheight )

love.graphics.rectangle("fill",land:getX() , land:getY(), width, height )

love.graphics.rectangle("fill",land:getX() , 310, 2000 , 40 )

love.graphics.rectangle("fill",colx , coly, colwidth, colheight )

love.graphics.rectangle("fill",opcitial:getX() , opcitial:getY(), opcitialwidth, opcitialheight )

love.graphics.rectangle("fill",pi:getX(), pi:getY() , piwidth, piheight)

--[[ make it invisble --

love.graphics.rectangle("fill",poll:getX(), poll:getY() , pollwidth, pollheight)

]]

love.graphics.print("E N D", textx, texty )

love.graphics.rectangle("fill",stan:getX(), stan:getY() , stanwidth, stanheight)

--[[ make it invisble

love.graphics.rectangle("fill",skyx , skyy, skywidth, skyheight )

]]

cam:detach()

end

-- moving funtions that helps the player too move... -- 

function love.touchreleased(id, x, y, dx, dy, p)

if touch == touch then 

player:applyLinearImpulse(0,200)

end

end

function love.touchpressed(id, x, y, dx, dy, p)

if touch == touch then 

player:applyLinearImpulse(100,-1300)

end

end

   

return scene

-- END OF THE CODE -- 
