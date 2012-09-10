require 'TEsound'
function love.load()
   love.graphics.setFont(love.graphics.newFont("fonts/ChronoTrigger.ttf",140))
   TEsound.play("Sounds/dd.mp3","kiss")
   TEsound.pause("kiss")
end

function love.draw()
   love.graphics.printf("MakeyLove",0,200,1024,"center")
end

function love.update(dt)
   TEsound.cleanup()
end

function love.keypressed(key)
   if key==" " then
      TEsound.resume("kiss")
   elseif key=="r"then
      TEsound.stop("kiss")
      TEsound.play("Sounds/dd.mp3","kiss")
      TEsound.pause("kiss")
   elseif key=="escape" then
      love.event.push("quit")
   end
   
end

function love.keyreleased(key)
   if key==" " then
      TEsound.pause("kiss")
   end
   
end



function love.quit()
  print("Bye MakeyMakey!!!!")
end




