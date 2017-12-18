//: [Previous](@previous)

let values =  [1,2,3,4,5]

var newArray = Array<Int>()

for number in values {
    newArray.append(number * 2)
}

let doubledNumbers = values.map { $0 * 2 }

// Map

extension Array {
    func customMap<T>(_ transform: (Element) -> T) -> [T]{
        var result = [T]()
        
        for x in self {
            result.append(transform(x))
        }
        return result
    }
}

let intergerValues = ["1", "2", "3"].customMap{ Int($0) } //type: Int?

import Foundation

struct Formatter {
    static let formatter = DateFormatter()
    
    static func date(from string: String) -> Date? {
        formatter.dateFormat = "d MMM yyyy"
        return formatter.date(from: string)
    }
}

let dateStrings = ["20 Oct 1978", "11 Jan 1947", "28 Mar 2002"]

let dates = dateStrings.customMap {
    Formatter.date(from: $0 )
}

print(dates)


struct Post {
    var content: String
    var tags: [String]
}

let blog = [
    Post(content: "Hello, world!", tags: ["first", "programming"]),
    Post(content: "Just another short post", tags: ["general"])
]

blog.map { $0.content }

extension Array {
    func customFlatMap<T>(_ transform: (Element) -> [T]) -> [T] {
        var result = [T]()
        
        for x in self {
            result.append(contentsOf: transform(x))
        }
        
        return result
    }
}


// Example 2

import UIKit

struct Account {
    let username: String
    let billingAddress: String?
}


let allUsers = [
    Account(username: "pasanpr", billingAddress: nil),
    Account(username: "benjakuben", billingAddress: "1234 Imaginary Street"),
    Account(username: "instantNadel", billingAddress: "5678 Doesn't Live Here Dr."),
    Account(username: "sketchings", billingAddress: nil),
    Account(username: "paradoxed", billingAddress: "1122 Nope Lane")
]


let validAddress = allUsers.flatMap { $0.billingAddress }
validAddress.count

// Filter

let evenNumbers = (0...100).filter { $0 % 7 == 0}
print(evenNumbers)



extension Array {
    func customFilter(_ isIncluded: (Element) -> Bool) -> [Element]{
        var result = [Element]()
        
        for x in self where isIncluded(x) {
            result.append(x)
        }
        
        return result
    }
}

let somePUsers = allUsers.customFilter { $0.username.first == "p" }

print(somePUsers)

let scores = [10, 12, 11, 10, 12, 9]
var totalScore = 0

for score in scores {
    totalScore += score
}


let totalScore2 = scores.reduce(0, { total, score in total + score })

extension Array {
    func customReduce<Result>(_ initial: Result, _ nextPartialResult: (Result, Element) -> Result) -> Result {
        var result = initial
        
        for x in self {
            result = nextPartialResult(result, x)
        }
        
        return result
    }
}

let dataSet = (1...100).filter { $0 % 3 == 0 && $0 % 7 == 0}
let identifier = dataSet.reduce("", {string, number in string + "\(number)"})
identifier






