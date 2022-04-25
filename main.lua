function love.load()

 changescene("Menu/menu")

end

function love.update(dt)

if scene:update() then scene:update()

end

end

function love.draw()

if scene:draw() then scene:draw() end

end

function love.touchpressed(id,x,y,dx,dy,p)

if 1==1 then

changescene("Game/game")

end

end

function changescene(nextscene)

   scene = require (nextscene)

   if scene:load() then scene:load() end

end

   

