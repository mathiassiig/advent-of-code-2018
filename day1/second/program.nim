import strutils
import sets
var frequency = 0
var values : HashSet[int]
values.init()
var frequencyFound = false
while not frequencyFound:
    for line in lines "input.txt":
        frequency += parseInt(line)
        if values.contains(frequency):
            echo frequency
            frequencyFound = true
            break
        values.incl(frequency)