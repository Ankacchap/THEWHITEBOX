-- Menu  --

local scene = {}


function scene:load()
camera = require 'Library/camera'

cam = camera()


end

function scene:update(dt)
cam:lookAt(320,180)
end


function scene:draw()

cam:attach()

--[[

-- up left side --

love.graphics.rectangle("fill", 0,30,50,20)

love.graphics.rectangle("fill", 0,50,20,30)

-- down left side --

love.graphics.rectangle("fill", 0,330,50,20)

love.graphics.rectangle("fill", 0,300,20,30)

-- up right side --

love.graphics.rectangle("fill", 590,50,50,20)

love.graphics.rectangle("fill", 620,50,20,50)

-- up right side --

love.graphics.rectangle("fill", 590,330,50,20)

love.graphics.rectangle("fill", 620,300,20,50)

]]

-- up --
love.graphics.rectangle("fill", 290,80,60,60)

love.graphics.rectangle("line",280,70,80,80)

-- down --

love.graphics.rectangle("line",310,140,80,80)

love.graphics.rectangle("fill",320,150,60,60)


-- button --

-- P --
love.graphics.rectangle("fill",250,260,10,40)

love.graphics.rectangle("fill",250,260,30,10)

love.graphics.rectangle("fill",250,280,30,10)

love.graphics.rectangle("fill",270,265,10,15)


-- L --


love.graphics.rectangle("fill",290,260,10,30)


love.graphics.rectangle("fill",290,290,20,10)

-- A --

love.graphics.rectangle("fill",320,260,10,40)

love.graphics.rectangle("fill",320,260,30,10)


love.graphics.rectangle("fill",320,280,30,10)

love.graphics.rectangle("fill",340,260,10,40)

-- Y --

love.graphics.rectangle("fill",390,260,10,50)

love.graphics.rectangle("fill",370,260,10,20)

love.graphics.rectangle("fill",370,275,20,10)

love.graphics.rectangle("fill",370,310,30,10)

-- ! --

love.graphics.rectangle("fill",420,260,10,30)

love.graphics.rectangle("fill",420,300,10,10)

cam:detach()

end



return scene
