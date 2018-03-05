-----------------------------------------------------------------------------------------
--
-- main.lua
-- created by Momin Ahmed
-- created on 5th March 2018
--
-- this code moves a character on the screen
-----------------------------------------------------------------------------------------
--
display.setStatusBar(display.HiddenStatusBar)

local scrollSpeed = 3

local backgroundImage = display.newImageRect("./assets/textures/BG.png", 2048, 1536)
backgroundImage.x = display.contentCenterX
backgroundImage.y = display.contentCenterY
backgroundImage.ID = "background image"

local cat = display.newImageRect("./assets/sprites/Fall.png", 500, 520)
cat.x = 0
cat.y = display.contentHeight - 200 
cat.ID = "cat"

local function MoveImage(event)
	
    cat.x = cat.x + scrollSpeed
    print( display.fps )  
end


Runtime:addEventListener("enterFrame", MoveImage)