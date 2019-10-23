import UIKit



// Closures: is a block of code that can be called in our program similar to a function. A closure is a type of function. We will see and recognize differences as we journey through this course. A closure is a type of function.

//=============================================================================================================
//                                      function review
//=============================================================================================================

// below returns void
// internal parameter name are used in the function body definition
// exterternal parameter name is used by the caller, they will see the external name e.g printGreeting(name: "Bob")

func printGreeting(_ name: String, _ age: Int = 21) { // we use a default parameter value here, with this we set the age as 21. in the case the caller of our function does not provide age argument, we will default to showing the age as being 21
    // we set the default value on the data type that we are interested in e.g age: Int = 21
    // code goes here
    print("Good morning \(name), welcome to iOS 6.3, your age is \(age)")
}

// below calls the function
printGreeting("Alex")

// below is terminator review:
//print("Good Friday morning", terminator: " 🥳") // default newline character for terminator "\n"
//
//for index in 0..<4 {
//print(" Good Friday morning", terminator: " 🥳")
//}

//=============================================================================================================
//                                      closure syntax
//=============================================================================================================

/* Closure Expression Syntax:
Closure expression syntax has the following general form:
 { (parameters) -> (return type) in
    //code here
 }
*/

// Closures:
// - can be passed as function parameters
// - can be assigned into a variable or constant
// - can be returned from a function

// below, greeting is a closure, does not have parameters, does not return a value, meaning it returns Void (nothing)
let greeting = {
    print("Welcome to closures.")
}

// below, we are calling greeting
greeting()

// closure that takes parameters and returns a value
let square = { (num: Int) -> (Int) in
    return num * num
}
print(square(10))


// shorthand // needs type annotation - REVIEW THIS
// using refactoring square closure above to make use of shorthand closure syntax and shorthand argument names
// $0 is the first parameter, here we ONLY have one parameter, if you e.g two parameters, it would be $0 followed by $1
let squareShorthandSyntax: (Int) -> (Int) = { $0 * $0 }
print(squareShorthandSyntax(25))

// practice, create add, subtract, multiply and divide using shorthand closure syntax and argument names
// subtract trailing closure implicitly returns the value of the subtraction. Return keyword is not needed.
let squareShorthandSyntaxTwo: (Int, Int) -> (Int) = { $0 - $1 }
print(squareShorthandSyntaxTwo(5,6))


//=============================================================================================================
//                                      closures as function parameters
// closures are "first class citizens" meaning we can pass closures into functions as parameters similar as we do with variables in functions, and we can also return a closure
//=============================================================================================================

// the name of the closure could be anyname, here we are simply using the word "closure" but it could be "action", "myClosure"..........
func helloGreeting(closure: (String) -> (Void)) {
    closure("Heather") // value was captured by the closure
}
// if a function has only one parameter, and that parameter happens to be a closure, you don't need to have ()
// below we are calling a function that takes in a closure using a trailing closure syntax
helloGreeting { name in
    print("Hello, \(name), it's Friday 🙃")
}


// another example below
func printClosure(action: () -> ()) {
    action()
}
// defined a closure named printingAction
// no parameter, no return
let printingAction = {
    print("inside printClosure trailing closure")
}
// called our printClosure
printClosure(action: printingAction)




//=============================================================================================================
//                  use some built-in higher order functions (closures)
//                  - map {....} - transforms a value. e.g 4 * 4 = 16, returns an array
//                  - filter {....} - filters values based on a condition, returns an array of collection
//                  - reduce (0, +) - takes an initial value, e.g 0 and a closure e.g + (addition) and combines                   all the values and returns the result
//                  - compactMap {....} - returns non-nil values
//                  - sorted { > } - you provide a sorting closure and it returns  the collection sorted                        accordingly
//                  - forEach {....} - similar to the for-in loop
//=============================================================================================================



//=============================================================================================================
//                                      using map
//=============================================================================================================

// Question: given an array of integers, return an array where each value is squared
// example input could be -
// input: [1, 2, 3, 4, 5, 6]
// output: [1, 4, 9, 16, 25, 36]
let list1 = [1, 2, 3, 4, 5, 6]
func returnSquares(arr: [Int]) -> [Int] {
    var squares = [Int]()
    for num in arr {
        squares.append(num * num)
    }
    return squares
}
print(returnSquares(arr: list1))



// using map
let usingMapResults = list1.map { $0 * $0 }
print(usingMapResults)


//=============================================================================================================
//                                      using filter
//=============================================================================================================
// Question: given an array of fellows return only fellows where their names begin with "a" case-insensitive
// input = ["George", "Tom", "Ahad", "James", "Ameni"]
// output = ["Ahad", "Ameni"]
let list2 = ["George", "Tom", "Ahad", "James", "Ameni"]
let filteredResults = list2.filter { $0.lowercased().hasPrefix("a") }
print(filteredResults)


//=============================================================================================================
//                                      using reduce
//=============================================================================================================
// Question: give an array of integers, return the sum
// input: [10, -10, 50, 20]

let list3 = [10, -10, 50, 20]
let reducedResults = list3.reduce(0, +)
print(reducedResults)


//=============================================================================================================
//                                      using compactMap
//=============================================================================================================
// Question: given an optional array of integers, return only valid integers
// input: [nil, 56, 12, -89, nil, nil, 0, 6]
// output: [56, 12, -89, 0, 6]
let list4 = [nil, 56, 12, -89, nil, nil, 0, 6]
let compactedResults = list4.compactMap { $0 }
print(compactedResults)
