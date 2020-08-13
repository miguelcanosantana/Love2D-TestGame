--EXECUTES ONCE AT START
function love.load()

    --WINDOWS TITLE
    love.window.setTitle("Avoid the Circles")

    --SETS ICON FOR WINDOWS
    icon = love.image.newImageData("images/title.png")
	loaded_icon = love.window.setIcon(icon)


    love.window.setMode(700, 700, {borderless = true}, {centered = true})

    --LOADS CONTENT ONCE WHEN GAME STARTS
    player = love.graphics.newImage("images/player.png")
    player_x_pos = 100
    player_y_pos = 10

    enemy = love.graphics.newImage("images/enemy.png")
    enemy_x_pos = 50
    enemy_y_pos = 50

    love.graphics.setNewFont(12)
    love.graphics.setBackgroundColor(81/255, 91/255, 146/255)

    --SETS MOUSE INVISIBLE
    love.mouse.setVisible(false)
    
    

 end

 --UPDATES CONTENT ALWAYS
 function love.update(dt)

    --PLAYER CONTROLLER
    if love.keyboard.isDown("up") then
       player_y_pos = player_y_pos - 2
    end

    if love.keyboard.isDown("down") then
        player_y_pos = player_y_pos + 2
    end

    if love.keyboard.isDown("left") then
        player_x_pos = player_x_pos - 2
    end

    if love.keyboard.isDown("right") then
        player_x_pos = player_x_pos + 2
    end

 end

 --DRAWS CONTENT ALWAYS
 function love.draw()
    love.graphics.draw(player, player_x_pos, player_y_pos)
 end