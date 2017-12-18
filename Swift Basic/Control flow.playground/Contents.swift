//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


var todo = ["a", "b"] // array syntax
var hehe =  [1, 2]

var nene: [String] = ["hehe"]

todo.append("a")

[1, 2, 3] + [4]

todo += ["hehe"]

//Insert using indexes

todo.insert("c", at:1)//syntax

//removing items from arrays

todo.remove(at:0)

todo.count



//Dictionaries

var air: [String : String] = ["LGA":"La Guardia", "HHH":"hehe"]

let temp = ["temp":54]

// insert key-value pair

air["HIH"] = "hehe"

air.updateValue("hehee", forKey: "wawa")

//Removing Key Value pairs

air["DXB"] = nil  //nil is "nullptr" in C++

air.removeValue(forKey: "HIH")


//option is powerful in Swift


print(todo[1])


//loops:

// for loops



for task in todo {
    
}

for i in 0...3 {//... range operator
    print(todo[i])
}

for i in 0..<4{ // ..< the range does not contaim 4
    print("i: \(i)")
}

// while loop

var i = 0

while i < 20 {
    i += 1
    print("i: \(i)")
}

// repeat while

repeat {
    print("I'm in the loop")
    
}while false


//if statement 

if (1 > 2) {
    
} else{
    print(1 < 2)
}

// swith statement

let kk = ["kk", "kk?", "kk!"]

switch "kk"  {
case "kk", "kk!":print("heh")//, used to make the case compand
default: print("fuck off")
}

var n = 4

var a = "\(n)"




