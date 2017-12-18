//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)


class Address{
    var buildingName: String?
    var buildingNumber: String?
    var street: String?
} //automatically initialized with nil


class Residence{
    var numberOfRooms = 1
    var address: Address?
}

class Person {
    var resedence: Residence?
}

let me = Person()


if let buildStreet = me.resedence?.address?.street{  // optional chainning

    print(buildStreet)
}


