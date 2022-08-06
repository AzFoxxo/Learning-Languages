require 'ruby2d'

# Set the background to black
set nackground: 'black'

# Set the title
set title: 'Reaction test'

# Set the game resolution
set width: 800, height: 600

# Display text message
message = Text.new('Click to start', x: 20, y: 20)

# Variables
game_started = false;
object = nil
start_time = nil

# On mouse down
on :mouse_down do |event|
    # If game has started
    if game_started
        # If object has been clicked, restart
        if object.contains?(event.x, event.y)
            duration = ((Time.now - start_time) * 1000).round # Get time between clicks
            message = Text.new("Time (ms): #{duration}!\ Click to restart", x: 20, y: 20) # Display time taken in ms
            object.remove # Remvoe the object
            game_started = false # Set the game to inactive
        end
    # Else if game hasn't started
    else
        # Delete the message
        message.remove

        # Create a square
        object_size = 25;
        object = Square.new(
            x: rand(get :width) - object_size, y: rand(get :height) - object_size,
            size: object_size,
            color: 'yellow'
        )

        # Start the game
        start_time = Time.now # Get the current time for calculating the difference
        game_started = true # Start the game
    end
end

# Show the window
show
