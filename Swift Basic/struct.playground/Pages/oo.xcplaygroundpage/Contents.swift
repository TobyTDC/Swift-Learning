//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let coordinate1: (a : Int, y: Int ) = (0, 0) // struct syntax1 

struct point { // struct syntax2
    let x: Int
    let y: Int //stored propreties
    
    init(x : Int = 0, y : Int = 0 ){ //initilizer -- constructor
        self.x = x;
        self.y = y; //self similar to this, self.y is the y filed
    }
    
    func points(inRange range: Int = 1) ->[point]{
        var results: [point] = [] // or var results = [point] to specify the type of the array
        let lowerBoundX = x - range
        let upperBoundX = x + range
        let lowerBoundY = y -  range
        let upperBoundY = y + range
        
        for X in lowerBoundX...upperBoundX{
            for Y in lowerBoundY...upperBoundY{
                results += [point(x:X, y:Y)]
            }
        }
        
        return results
    }
}

let p1 = point(x: 1, y: 2) //syntax for instances


var range = p1.points(inRange: 2)




//--------class----------

class Enmey{
    var life: Int = 3
    let position: point
    
    init(x:Int, y:Int){
        self.position = point(x: x, y: y)
    }
    
    
    func decreaseLife(by factor: Int){
        life -= factor
    }
}


//-------inheritance--------


class superEnmey : Enmey { //syntax for inheritance 
    
    let isSuper: Bool = true
    
    override init(x: Int, y: Int){
        super.init(x: x, y: y) // superclass constructor runs
        self.life = 50
    }
    
}


