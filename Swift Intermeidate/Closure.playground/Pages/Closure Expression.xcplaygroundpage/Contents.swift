

func double(_ value: Int) -> Int {
    return value * 2
}

let doubleFunction = double
doubleFunction(2)

let numbers = [1,2,3,4]

let doubleNumbers = numbers.map(doubleFunction)

// Closure Expression Syntax

// rule 1: define the closure in line

let tripledNumbers = numbers.map({(value: Int) -> Int in
    return value*3
})


// rule 2: Inferring Type From Context


numbers.map({value in return value*3})

// rule 3: Implict Returns from Single-Expression Closures

numbers.map({value in value*3})

// rule 4: Shorthand Argument names

numbers.map({$0*3})


// rule 5: trailing closures

numbers.map() { $0 * 3 }

numbers.map() { number -> Int in
    if number % 2 == 0{
        return number/2
    }
    
    return number/3
}

// rule 6: Ingoring Parentese

numbers.map() { $0 * 3 }






