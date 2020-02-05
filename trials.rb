#set number of games to play and initial values for stay/switch
games = 10000
stay = 0
switch = 0

#run method 10000 times as set above
games.times do
    
    # .shuffle returns new array with random order
    # 0's represent 'goats' and 1 is the winning 'car' door
    # rand returns random int >= 3
    doors = [0, 0, 1].shuffle
    guess = rand(3)

    # executes code once then evaluates conditional
    # opened door is assigned random value between 1-3
    # checks if that value equals the contestants guess or a winning door value of 1, runs again if not
    begin 
        openedDoor = rand(3) 
    end while openedDoor == guess || doors[openedDoor] == 1

    # if random guess value is equal to 1, a 'car' was selected and stay value is incremented
    # otherwise increment switch value
    if doors[guess] == 1
        stay += 1
    else
        switch += 1
    end

end

stay_wins = (100.0 * stay / games)
switch_wins = (100.0 * switch / games)

puts "For a Monty Hall simulation of 10,000 games:"
puts "Staying wins #{stay_wins}% of the time."
puts "Switching wins #{switch_wins}% of the time."