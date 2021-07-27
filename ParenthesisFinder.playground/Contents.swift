
///"Sometimes (when I nest them (my parentheticals) too much (like this (and this))) they get confusing."
///Write a function that, given a sentence like the one above, along with the position of an opening parenthesis, finds the corresponding closing parenthesis.
///Example: if the example string above is input with the number 10 (position of the first parenthesis), the output should be 79 (position of the last parenthesis).

import UIKit

public struct ParenthesisIndex {
    let first: Int
    let last: Int
}
var greeting = "Sometimes (when I nest them (my parentheticals) too much (like this (and this))) they get confusing."

public func findOpeningAndEndParanthesis(_ sentence: String) -> [ParenthesisIndex] {
    var paranthesisIndex = [ParenthesisIndex]()
    var indexArray = [Int]()
    let characterArray = Array(sentence)
    for index in 0..<characterArray.count {
        if characterArray[index] == "(" {
            indexArray.append(index)
        } else if characterArray[index] == ")" {
            paranthesisIndex.append(ParenthesisIndex(first: indexArray.removeLast(), last: index))
        }
    }
    return paranthesisIndex
}

print(findOpeningAndEndParanthesis(greeting))

public func findOpeningAndEndIndexes(_ sentence: String) -> (Int,Int) {
    var firstIndex = 0
    var lastIndex = 0
    var indexArray = [Int]()
    let characterArray = Array(sentence)
    for index in 0..<characterArray.count {
        if characterArray[index] == "(" {
            indexArray.append(index)
        } else if characterArray[index] == ")" {
            firstIndex = indexArray.removeLast()
            lastIndex = index
        }
    }
    return (firstIndex,lastIndex)
}
print(findOpeningAndEndIndexes(greeting))
