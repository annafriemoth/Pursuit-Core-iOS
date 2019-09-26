import UIKit

var str = "Hello, playground"

// this is a comment

// Data Types: String, Int (Integer)





// STRING //



// declared a variable fellowName of type String

// The following line is an example of a Type Inference. A Type Inference is an implicit declaration of a variable
var fellowName = "David Lin"


// The following line is an example of a Type Annotation. A Type Annotation is explicity writing the data type using : (color)
var cohort: String = "iOS 6.3"


// The following line is a string
// var alphabet = "c"





// CHARACTER //



// The following is a character
var alphabet: Character = "c"


// mutating cohort
// var is mutable - meaning can be changed
cohort = "iOS 7.3"




// INT

var ageOfFellow = 32
// here I declared a variable called age and initialized value to the number 32

var futureAge = ageOfFellow + 8

futureAge


// String interpolation is embedding a variable into a String using \(variable name) syntax as seen below
print("Age of fellow 8 years from now is \(futureAge)")




// DOUBLE //



var balance = 100005.9


// re-assign balance a new value of 85000
balance = balance + 85000

print(balance)




// SHORT HAND ARITHMETIC //


balance -= 180000

print(balance)


// BOOLEAN - BOOL, COMPARISON OPERATORS //

var result = 70 < 100

print(result)


var otherResult = result && true

print(otherResult)

//&& means and

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


