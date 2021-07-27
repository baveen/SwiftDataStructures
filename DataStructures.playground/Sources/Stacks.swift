import Foundation

// A Stack is data structure to store data in stack. It will follow the LIFO method to store data.
// Bahaviours of a Stack
    //  Essential behaviours
    //      1. Push element to the stack - add elements in a tack
    //      2. Pop element from stack - remove top element
    //  Additional Behaviors
    //      1. Peek element from top
    //      2. isEmpty check
public struct Stack<Element> {
    // stack needs an storage
    var stackArray = [Element]()
    
    mutating func push(element: Element) {
        stackArray.append(element)
    }
    
    mutating func pop(element: Element) -> Element? {
        return stackArray.popLast()
    }
    
    func peek() -> Element? {
        return stackArray.last
    }
    
    func isEmpty() -> Bool {
        return peek() == nil
    }
}
