//
//  ViewController.swift
//  TestingDataStruct
//
//  Created by Baveendran Nagendran on 2021-07-20.
//

import UIKit

class ViewController: UIViewController {
    
    public struct ParenthesisIndex {
        let first: Int
        let last: Int
    }

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

    override func viewDidLoad() {
        super.viewDidLoad()
        let greeting = "Sometimes (when I nest them (my parentheticals) too much (like this (and this))) they get confusing."
        print(findOpeningAndEndParanthesis(greeting))
    }


}

