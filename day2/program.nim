import strutils
import tables

proc getMulties(line: string) : (int, int) =
    var charCount = initTable[char, int]()
    for character in line:
        if charCount.hasKey(character):
            charCount[character] = charCount[character] + 1
        else:
            charCount[character] = 1
    var twoOutput, threeOutput = 0
    for count in charCount.values:
        if count == 2:
            twoOutput = 1
        if count == 3:
            threeOutput = 1
    return (twoOutput, threeOutput)

var twos, threes = 0
for line in lines "input.txt":
    let (a, b) = getMulties(line)
    twos += a;
    threes += b;

echo twos*threes
