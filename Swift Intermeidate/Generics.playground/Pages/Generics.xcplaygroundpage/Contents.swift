//: Playground - noun: a place where people can play

import UIKit

// all the argument in swift are passed with the form of constatnt

func swapInts(_ a: inout Int, _ b: inout Int){ //inout -- pass by reference and make them changeable
    let tempA = a
    a = b
    b = tempA
}

var d = 10
var e = 12

swapInts(&d, &e)
d
e

var g = "g"
var h = "h"

func swapString(_ a: inout String, _ b: inout String){
    let temp = a
    a = b
    b = temp
}

swapString(&g, &h)

g
h


/*func swapAny(_ a: inout Any, _ b: inout Any) {
    let temp = a
    a = b
    b = temp
} */
// this doesn't work as all the arguments need to be casted to a specific type

func swapAny<T>(_ a: inout T, _ b: inout T){
    let temp = a
    a = b
    b = temp
} //<could be anything>



swapAny(&g, &h)
swapAny(&e, &d)

//

func transform<T, U>(arg: T, operation: (T) -> U) -> U{
        return operation(arg)
}


func stringToInt(_ a: String) -> Int {
    guard let value = Int(a) else { fatalError() }
    return value
}

transform(arg: "1", operation: stringToInt)

func intToString(_ a: Int) -> String {
    return String(a)
}

transform(arg: 12, operation: intToString)

func findKey<Key, Value: Equatable>(for value: Value, in dictionary: Dictionary<Key, Value>) -> Key?{
    for (iterKey, iterValue) in dictionary {
        if iterValue == value {
            return iterKey
        }
    }
    
    return nil
}

struct Item {
    let price: Int
    let quantity: Int
}

let airportCodes = ["abc": "amer bec com", "bbs": "bacically bull shit"]

findKey(for: "bacically bull shit", in: airportCodes)

enum Snack{
    case gum
    case cookie
}


let inventory: [Snack: Item] = [
    .gum: Item(price: 1, quantity: 5),
    .cookie: Item(price: 2, quantity: 3)
]

let someItem = Item(price: 2, quantity: 3)

extension Item: Equatable{
    static func ==(lhs: Item, rhs: Item) -> Bool{
        return lhs.price == rhs.price && lhs.quantity == rhs.quantity
    }
}

findKey(for: someItem, in: inventory)


// class constraints


class Shape {}

func center<T: Shape>(of shape: T) { //T needs to be a instance of shape or it's subclasses
    print("Called")
}

let test = Shape()
center(of: test)

class Square: Shape {}
let testSquare = Square()
center(of: testSquare)


