//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func area (length: Int) {
    
    
    
    print(10*length)
    
}// syntax for functions


area(length: 1)
area(length: 2)



func hehe (h: String) -> String{
    return h
}// syntax for function to return a type


var hehehe = hehe(h:"hehehe")

func remove(havingValue value: String){ // havingValue is a external parameter name while value is a     
                                        // internal name(used only within the function)
    print(value)
}

remove(havingValue: "a")



func haha(a b: Int = 0) -> Double {// syntax for default value
    return 12.0
}


func hhhh() -> (a: String, b: Int){
    return ("hehe", 2) //the syntax to return a compuond(structure with fielda and b)
}

var t = hhhh()

t.a
t.b

func fn(_ b:Int){} // _ means the function do not need any parameter out side the function




