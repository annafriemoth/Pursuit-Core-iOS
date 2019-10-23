import UIKit

// Optional - used to indicate that a value MAY exist
//             two possible outcomes
//              outcome 1: there is a value and it can be used as a normal
//              outcome 2: there isn't a value, in Swift terms it's nil (nil means we cant use it,              it's empty, or "no")
/*
    String?        <-- this is an optional string
    Bool?
    Int?
    Double?
    Character?
 */

/*
 Ways to unwrap an Optional:
 1. forced unwrapping e.g Int(response)!
 2. nil-coelscing e.g Int(response) ?? 21 - this allows you to provide a default value
 3. optional binding e.g if let bindingValue = optionalValue {..we can use binding value here...} else {.....}
 4. implicit unwrapping e.g var name: String!
 */

// attempting to cast a String to an Int using this e.g Int("45")

let floatValue: Float = 45.9
let doubleValue = 10.3
let result = Double(floatValue) + doubleValue // Double(Float Value)

let response = "27"

//var age = Int(response)! 1. forced unwrapping
var age = Int(response) ?? 21 // 2. nil coelescing allows you to provide a default value

if let yourAge = Int(response) { // 3. optional binding
    print("the age you entered is \(yourAge)")
} else {
    print("the response value is nil")
}
age + 10
 



