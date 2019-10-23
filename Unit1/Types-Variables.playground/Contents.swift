import UIKit


// Swift - this is a single line comment


/*
 this is a multiline comment
 
 Swift was introduced in 2014
 - swift is a type safe language meaning you can't mix a declared data type with another e.g if var name = "Alex"
   you cannot update name = 10 // won't compile type String is not an Int
 - modern language
 - provides optionals that allows us to know whether a variable has a value or not
 */




// mutable
var str = "Hello, playground"

// this is a comment

// Data Types: String, Int (Integer)









// STRING //



// declared a variable fellowName of type String

// The following line is an example of a Type Inference. A Type Inference is an implicit declaration of a variable
var fellowName = "David Lin"

print(fellowName) // David Lin

fellowName = "Chelsi Christmas"

// DOES NOT COMPILE - CANNOT ADD DIFFERENT DATA TYPES
//let newString = "34" + 12

// concatenation - adding together
let fullName = "Alex" + " Paul" // Alex Paul

var fallCycle = "iOS 6.3"

// using String Interpolation we are printing fullName's description
print("\(fullName) is the iOS Instructor for \(fallCycle)")



// The following line is an example of a Type Annotation. A Type Annotation is explicity writing the data type using : (color)
var cohort: String = "iOS 6.3"


// The following line is a string
// var alphabet = "c"


// String comparison -
let lowercaseName = "alex"
let uppercaseName = "Alex"

let stringResult = lowercaseName == uppercaseName

let alphabeticalOrder = "Kelyby" < "Lorraine"
print("alphabeticalOrder result \(alphabeticalOrder)")









// CHARACTER //



// The following is a character
var alphabet: Character = "c"


// mutating cohort
// var is mutable - meaning can be changed
cohort = "iOS 7.3"




// INT //



var ageOfFellow = 32
// here I declared a variable called age and initialized value to the number 32

var futureAge = ageOfFellow + 8

futureAge


// String interpolation is embedding a variable into a String using \(variable name) syntax as seen below
print("Age of fellow 8 years from now is \(futureAge)")


// integer division truncatews decimals (removes them)




let secondsInMinute = 60
let secondsInHour = 60 * secondsInMinute
let secondsInDay = 24 * secondsInHour


var secondsInAYear = secondsInDay * 365

// DIVISION BY 0 //

// 89 / 0   DOES NOT COMPILE






// DOUBLE //



var balance = 100005.9


// re-assign balance a new value of 85000
balance = balance + 85000

print(balance)

// floating point division keeps decimals
// let floatingPointDivision = 16.0 / 3.0 (also valid to keep decimal points)

let floatingPointDivision: Double = 16 / 3
print("floating point division is \(floatingPointDivision)")



// FLOAT VS DOUBLE //
// FLOAT HOLDS 32-BIT VS 64-BIT OF A DOUBLE //

let floatNum: Float = 67.990776788943
let doubleNum = 67.990776788943
print("float is \(floatNum) and double is \(doubleNum)")
    
// DOES NOT COMPILE - CANNOT ADD A FLOAT TO A DOUBLE
// let accountBalance = floatNum + doubleNum


// below - here we are casting (converting) a Float to a Double
let accountBalance = Double(floatNum) + doubleNum
print("account balance is now \(accountBalance)")




var rockysAge = 20
print ("rockysHumanAge is \(rockysAge/7)")



// SHORT HAND ARITHMETIC //


balance -= 180000

print(balance)


// BOOLEAN - BOOL, COMPARISON OPERATORS //

var result = 70 < 100

print(result)


var otherResult = result && true

print(otherResult)

//&& means and
// || means or


//T&&T = T
//T&&F = F
//T||F = T
//F||F = F
//T||T = T

//comparison operators
//>
//>+
//<
//<+
//==
//!=

// = is an assignment operator

-5 > -2 && 3 >= -5



// ARITHMETIC OPERATORS //

// THIS DOES NOT COMPILE - let is immuatable - constant
//var salary = 20000
//salary *= 2
//print(salary)

var salary = 20000
salary *= 2
// this line above is the same as (salary = salary * 2)
print(salary)

var marathonTime = 600 // 6 hours
marathonTime /= 2
print(marathonTime) // 300



// MODULO OPERATOR OR REMAINDER OPERATOR //

// % is the modulos operator
var modResult = 16 % 3
print(modResult)


var even = 12 % 6
print(even)




var weather = "The weather is beautiful!"




// CONSTANTS //

let pi = 3.14



