//: Playground - noun: a place where people can play

func printString(_ string: String){
    print("Printing the string passed in as an argument: \(string)")
}

printString("Hi")

let stringPrinterFunction = printString
stringPrinterFunction("Hehe")

func sum(a: Int, b: Int) -> Int{
    return a + b
}

let addTwoNumbers = sum
addTwoNumbers(1,2)

// Functions as Parameters

func displayString(usingFunction function: (String) -> ()){
    function("I'm a function inside a function")
}

displayString(usingFunction: stringPrinterFunction)


extension Int {
    func applyOperation(_ operation: (Int) -> Int) -> Int {
        return operation(self)
    }
}

func double(_ value: Int) -> Int {
    return value * 2
}

10.applyOperation(double)

func gameCounter() -> (Int) -> Void{
    
    var localCounter = 0
    
    func increment(_ i: Int){
        localCounter += i
        
        print("Local counter value: \(localCounter)")
    }
    
    return increment
}

let counter = gameCounter() //closure
counter(1)
counter(1)

let anotherCounter = gameCounter()
anotherCounter(1)

// functions are first class citizens









