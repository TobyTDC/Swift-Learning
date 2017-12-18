//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)


enum Coin : Double{
    case penny = 0.01
    case nickel = 0.05
    case dime = 0.1
    case quarter = 0.25
}

let Wallet: [Coin] = [.penny, .nickel, .dime, .quarter]

var count = 0

for coin in Wallet {
    switch coin {
    case .quarter: count += 1
    default: continue
    }
}



count = 0

for case .quarter in Wallet {
    count += 1
} // syntactical suger


for coin in Wallet {
    if case .nickel = coin {
        print("hehe")
    } else if case .dime = coin {
        print("Better than nothinh")
    }
}


let someOptional: Int? = 42

if case .some(let x) = someOptional {
    print(x)
}

// Nil coalescing Operator

let firstName: String? = "Pasan"
let username = "Passanpr"

// question? answer1 : answer2 (if question is true return answer1; otherwise return answer2)

//let displayName = firstName != nil ? firstName! : username

let displayName = firstName ?? username // syntactical suger



print(displayName)



