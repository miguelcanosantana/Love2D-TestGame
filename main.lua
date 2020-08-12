--LOADS CONTENT ONCE WHEN GAME STARTS
function love.load()
    player = love.graphics.newImage("images/player.png")
    player_x_size = 50
    player_y_size = 50

    enemy = love.graphics.newImage("images/enemy.png")
    enemy_x_size = 50
    enemy_y_size = 50

    love.graphics.setNewFont(12)
    love.graphics.setBackgroundColor(81/255,91/255,146/255,50/100)
    
 end

 --UPDATES CONTENT ALWAYS
 function love.update(dt)
    if love.keyboard.isDown("space") then
       shooting = true
    else
        shooting = false
    end
 end

 --DRAWS CONTENT ALWAYS
 function love.draw()
    love.graphics.draw(player, player_x_size, player_y_size)
 end