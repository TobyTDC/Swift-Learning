//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

enum Day {
    case sunday
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
}

enum DayType{
    case weekday, weekend
}


func dayType(for day: Day) -> DayType{
    switch day{
    case Day.sunday, Day.saturday: return DayType.weekend
    case Day.monday, Day.tuesday, Day.wednesday, Day.thursday, Day.friday: return DayType.weekday // enum case must be exhausted
    }
}

func isNotificationMuted(on type: DayType) -> Bool{
    switch type{
    case .weekend: return true //.type is avaliable for the syntax
    case .weekday: return false
    }
}




enum ColorComponent {
    case rgb(red:CGFloat, green:CGFloat, blue:CGFloat, alpha:CGFloat)
    case hsb(hue:CGFloat, satuartion:CGFloat, brightness: CGFloat, alpha:CGFloat)
    
    func color() -> UIColor {
        switch self {
        case .rgb(let red, let green, let blue, let alpha): return UIColor(red: red/255.0, green: green/255.0, blue:blue/255.0, alpha: alpha)
            
        case .hsb(let hue, let saturation,let brightness, let alpha): return UIColor(hue: hue/360.0, saturation: saturation/100.0, brightness: brightness/100.0, alpha: alpha)
        }
    }
}


ColorComponent.rgb(red:61.0, green: 120.0, blue: 198.0, alpha: 1.0).color()

// Raw values


enum Coin : Double{
    case penny = 0.01
    case nickel = 0.05
    case dime = 0.1
    case quarter = 0.25
}


let coins: [Coin] = [.penny, .nickel, .dime,.dime,.quarter, .quarter, .quarter]

func sum(having coins: [Coin]) -> Double{
    var total: Double = 0
    
    for coin in coins{
       /* switch coin {
        case .penny: total += 0.01
        case .nickel: total += 0.05
        case .dime: total += 0.1
        case .quarter: total += 0.25*/
        
        total += coin.rawValue // built-in function
        
    }
    
    return total
    
}

sum(having: coins)


enum HTTP: String {
    case post
    case get
    case put
    case delete
}

HTTP.post.rawValue


enum HTTPStatusCode: Int {
    case success = 200
    case forbidden = 403
    case unauthorized = 401
    case notFound = 404
}

let statusCode = 200

if let httpStatusCode = HTTPStatusCode(rawValue: statusCode){
    print (httpStatusCode)
}
// returns an optional value




