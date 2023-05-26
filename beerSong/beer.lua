local beer = {}

function beer.sing(number)
    local bottles
    if number == 0 then
        bottles = "No more bottles"
    elseif number == 1 then
        bottles = "One bottle"
    else
        bottles = number .. " bottles"
    end
    return bottles .. " of beer"
end

function beer.verse(start, finish)
    if finish == nil then
        finish = 1
    end
    for bottleNumber = start, finish, -1 do
        print(beer.sing(bottleNumber).. " on the wall, \n")
        print(beer.sing(bottleNumber).. ",\n")
        print("Take one down, pass it around, \n")
        print(beer.sing(bottleNumber - 1).. " on the wall, \n\n")
    end 
    if finish < 1 then
        print("No more bottles of beer on the wall,\nNo more bottles of beer,\n")
        print("Go to the store, buy some more!\n") 
    end
end

return beer