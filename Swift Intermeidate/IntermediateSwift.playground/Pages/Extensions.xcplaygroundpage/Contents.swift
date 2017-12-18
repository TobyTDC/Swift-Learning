//Extension

extension Int { // cannot add stored property or property observers
    var isOdd: Bool{
        return self%2 != 0
    }
}

//Protocol Conformance Through Extensions

protocol UniquelyIdentifiable{
    var uuid: Int { get }
}

import UIKit

extension UIView: UniquelyIdentifiable {
    var uuid: Int {
        return hash
    }
}


let view = UIView()

view.hash

view is UniquelyIdentifiable

// protocol extensions

protocol RandomNumberGenerator {
    func random() -> Int
}

extension RandomNumberGenerator {
    func random() -> Int {
        return Int(arc4random())
    }
}

class Genertor: RandomNumberGenerator {}

let generator = Genertor()
generator.random()





protocol Person{
    var firstName: String { get }
    var lastName: String { get }
    var fullName: String { get }
}


extension Person{
    var fullName: String{
        return "\(firstName) \(lastName)"
    }
    
    func greeting() -> String {
        return "Hi, my name is \(fullName)"
    }
}

struct User: Person {
    let firstName: String
    let lastName: String
    
    func greeting() -> String {
        return "Hey there! Nice to meet you, my name is \(fullName)"
    }
}

let user = User(firstName: "Pasan", lastName: "KK")
user.greeting()


let anotherUser: Person = User(firstName: "Toby", lastName: "Dennis") // pitfall
anotherUser.greeting()






