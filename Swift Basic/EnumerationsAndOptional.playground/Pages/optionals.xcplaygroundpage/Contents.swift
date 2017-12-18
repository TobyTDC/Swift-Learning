//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)


struct Person{
    let firstName: String
    let middleName: String? //? optional type, allow miidleName be a String or nil, optional is a enum
    let lastName: String
    
    func fullName() -> String{
        if middleName == nil {
            return firstName + " " + lastName
        }
        
        return firstName + " " + middleName! + " " + lastName // ! is force unwrapping
    }
}

let a = Person(firstName: "Toby", middleName: nil, lastName: "Tang")


let airportCodes = ["ABc": "hehe"]
let newYork = airportCodes["CDE"] // newYork is a nil

//dictionaries return optional types

if let newYork = airportCodes["CDE"]{ //automated unwrapping, type: String
    print(newYork)
}else{
    print("Whoooooooops!")
}


let b :[String : [String : String]] = ["Hehe" : ["haha" : "2"]]

if let Hehe = b["Hehe"], let haha = Hehe["haha"] {
    print(haha)
}

//Downsides of if let
struct Friend{
    let name: String
    let age: String
    let address: String?
    
    
    //init? (dic: [String : String]){ // by putting ? we allow init to return nil
   //     return nil
   // }
}

func new(friendDictionary: [String : String]) -> Friend? {
    if let name = friendDictionary["name"], let age = friendDictionary["age"]{
        return Friend(name:name, age:age, address:friendDictionary["address"])
    }
    
    return nil
}

// a new keyword guard is useful in this point (early exit construct)

//guard let someValue = someOptionalExpression else{
//    return nil
//}


func newFriend(friendDictionary: [String : String]) -> Friend?{
    guard let name = friendDictionary["name"], let age = friendDictionary["age"] else{
        return nil
    }
    
    return Friend(name:name, age:age, address:friendDictionary["address"])
    
}









