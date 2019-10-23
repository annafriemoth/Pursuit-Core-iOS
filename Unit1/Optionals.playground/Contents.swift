import UIKit

// Optionals: is a type that represents two possibilities - either we have a value or we do not have a value (nil).

// Swift data types support optionals e.g

/*
    String
*/

//===============================================================================================
//                           Introduction to Optionals
//===============================================================================================

var name: String = "Alex"
print(name)

// question mark after the data type signifies that it is an Optional

var age: Int? = 21 // here we have an optional Int? with default value of nil
print(age) // nil - doesn't have a value

var num = Int("It's Monday") // here we also have an optional Int?


//===============================================================================================
//                           Ways to Unwarp Optionals
//  1. Forced Unwrapping using an exclaimation mark ! or some programmers refer it to as               as banging !
//  2. Nil-coalescing using two question marks ?? followed by a default value that we                  provide
//  3. Optional binding using if let, where a value is assigned the existing if one is a               available
//  4. Implicit unwrapping e.g var name: String!
//===============================================================================================

//===============================================================================================
//                           Forced Unwrapping
//===============================================================================================

let decadeFromNow = age! + 10 // can't add optional Int? to an Int
print(decadeFromNow)

// forced unwrapping should be used sparingly only when you the developer is GUARANTEED a value at runtime

//===============================================================================================
//                           Nil-Coalescing
//===============================================================================================

var temperature: Int? = 75 // degrees

let validTemperature = temperature ?? 67 // 67 is the default value in the case temperature is nil
print("Temperature is \(validTemperature)")

var cohort: Int?

var nextYearCohort = (cohort ?? -1)
if nextYearCohort == -1 {
    print("something went wrong with the application")
} else {
    print("everything went well")
}

print ("Pursuit next cohort will be \(nextYearCohort)")

//===============================================================================================
//                           Optional Binding: if let, white let
//===============================================================================================

var wage: Int? = 40_000 // dollars
var year: Int? // nil by default if a value is not provided
// if let unwraps the wage variable, if it does have a value, then that value gets assigned to the bindedValue variable constant
// validWage is 40000
// validYear is nil
if let validWage = wage,
    let validYear = year { // the comma here is like an && // if let wage has a value, assign it to bindedValue
// we only enter the if let block {.....} if wage is NOT nil, in other words ONLY if wage has a value
// if wage has a value, the if let is TRUE
// if wage is nil the if let is FALSE
// can only use bindedValue within the if let block!!!
    print("You entered \(validWage) as your wage in the current year of \(validYear)")
// if let only works on optionals
} else { // else condition is false, or wage is nil
    print("Values are unavailable")
}

// string interpolation
var modelYear: Int?
print("model year is \(modelYear ?? 1959)")


//===============================================================================================
//                           testing optionals for equality
//===============================================================================================

var someValue: Int? = 7
if someValue == 7 {
    print("\(String(describing: someValue)) is equal to 7")
}

//===============================================================================================
//                           looping through and optional array
//===============================================================================================

var numbers: [Int?]
numbers = [4, 9, nil, 10, 20, nil]

// QUESTION: add ONLY valid integers
var sumUnwrappedUsingOptionalBinding = 0
var sumUsingNilCoalescing = 0
for currentNum in numbers {
    
    // using optional binding to unwrap
    if let validNum = currentNum { // using optional binding to unwrap the current num
      sumUnwrappedUsingOptionalBinding += validNum
    }
    
    // using nil-coalescing
    sumUsingNilCoalescing += currentNum ?? 0
}
print("the sum of numbers is \(sumUnwrappedUsingOptionalBinding)")
print("the sum of numbers using nil-coalescing \(sumUsingNilCoalescing)")
 

// creating averages ----- create a variable called count and as youre going into the if/let and add 1, divide it by this number
