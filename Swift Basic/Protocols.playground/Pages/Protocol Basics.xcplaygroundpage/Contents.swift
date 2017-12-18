//protocol serves as a blueprint for some functionality
protocol FullNameable {
    var fullName: String { get }
}


struct User: FullNameable {
    
    var fullName: String
    
}

let user = User(fullName: "John Smith")

struct Friend: FullNameable {
    let firstName: String
    let middleName: String
    let lastName: String
    
    var fullName: String {
        return "\(firstName) \(middleName) \(lastName)"
    }
    
}

let friend = Friend(firstName: "Dongchen", middleName: "Toby", lastName: "Tang")

friend.fullName


import Foundation

enum EmployeeType{
    case manager
    case traditional
}


protocol Payable{
    func pay() -> PayCheck
}


struct PayCheck{
    let base: Double
    let benefits: Double
    let deductions: Double
    let vacation: Double
}



class Employee {
    let name: String
    let address: String
    let startDate: Date
    let type: EmployeeType
    
    init(name: String, address: String, startDate: Date, type: EmployeeType){
        self.name = name
        self.address = address
        self.startDate = startDate
        self.type = type
    }
    
    
}


class HourlyEmployee: Employee, Payable{
    var hourlyWage = 15.00
    var hoursWorked = 0.0
    let vacation = 0
    
    func pay() -> PayCheck{
        let base = hoursWorked*hourlyWage
        
        return PayCheck(base:base, benefits: 0, deductions: 0, vacation: 0)
    }
    
}



class SalaryEmployee: Employee, Payable {
    var salary = 50000.00
    var benefits = 1000.00
    var deductions = 0.0
    var vacation = 2.0
    
    func pay() -> PayCheck {
        let monthly = salary/12
        
        return PayCheck(base: monthly, benefits: benefits, deductions: deductions,
                        vacation: vacation)
    }
}


func pay(employee: Payable){
    employee.pay()
}

let employee = HourlyEmployee(name: "Pasan", address: "someAddress", startDate: Date(), type: .traditional)

pay(employee: employee)

// loosely related types


protocol Blendable{
    func blend()
}


class Fruit: Blendable {
    var name: String
    
    init(name: String){
        self.name = name
    }
    
    func blend(){
        print("I'm mush!")
    }
    
    
    
}


class Dairy {
    var name: String
    
    init(name: String){
        self.name = name
    }
}

class Cheese: Dairy {}

class Milk: Dairy, Blendable {
    func blend(){
        print("hehe")
    }
}


func makeSmoothie(with ingredients: [Blendable]){
    for ingredient in ingredients{
        ingredient.blend()
    }
}

// protocal as types: 1. parameter type or return type.
//2. Type of constant, variable ,or property
// 3. the underlying type of a collection


let strawberry = Fruit(name: "Strawberry")
let cheddar = Cheese(name: "cheddar")
let chocolateMilk = Milk(name: "Chocolate")

let ingredients: [Blendable] = [strawberry, chocolateMilk]

makeSmoothie(with: ingredients)

//is-a : inheritance , has-a: create a protocol

// Protocol Inheritance

protocol Printable{
    func description() -> String
}

protocol PrettyPrintable: Printable{
    func prettyDescription() -> String
}

struct User2: PrettyPrintable, Equatable{
    let name: String
    let age: Int
    let address: String
    
    func description() -> String {
        return "\(name), \(age), \(address)"
    }
    
    func prettyDescription() -> String {
        return "name: \(name), age: \(age), address: \(address)"
    }
    
    static func == (lhs: User2, rhs: User2) -> Bool{
        return lhs.name == lhs.name && lhs.age == rhs.age && lhs.address == rhs.address
    }
}

// Protocol : Can do

//eg. Equitable










