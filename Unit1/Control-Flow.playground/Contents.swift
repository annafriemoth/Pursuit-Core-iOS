import UIKit

// Control Flow, Tuples

// if / else

// block of code { code in here }

/*
 
 //example 1 - if statement
 if(some condition is true) {
 execute code
 }
 
 //example 2 - if/else statement
 if(some condition is true) {
    execute this block of code
 } else {
 some other statement will get executed
 }
 
 //example 3 - if/else if/ else
 */

// built-in fuctions we have seen so far include:
/*
 print()
 lowercased()
 round() - e.g 1.345 => 1.35

 */
var day = "Friday"//.lowercased()

if day == "friday" {
    print("woohoo TGIF 🍺")
}
print("control flow is cool")



//=========================================
//              IF / ELSE
//=========================================

day = "Monday".lowercased()

if day == "saturday" {
    print("it's a beach day")
} else {
    print("just another day")
}

day = "monday"

print("Today is \(day)")





//=========================================
//              IF / ELSE IF / ELSE
//=========================================

var temperature: Double = 0 // degrees

if temperature < 45 { // scope of if block is within curly bracket {...}
    print("it's cold don't forget your gloves")
    if temperature == 0 { // nested if statements
    print("I'm dead")
    }
} else if temperature == 85 {
    print("this is my kind of weather")
} else {
    print("the temperature for today is \(temperature)")
}






    
//=========================================
//              TERNARY OPERATOR - means 3
//
// (condition - means evaluates to true or false)
// (condition) ? execute if true : execute if false
//                  vs
// if (condition) {
//      // code here
// } else {
//
// }
//=========================================

var age = 20

print (age > 20 ? "you can have that drink 🍺" : "get back to Grandma's house")



//=========================================
//              SWITCH STATEMENT
//=========================================

var cohort = "web".lowercased() // input

switch cohort {
case "iOS".lowercased():
    print("iOS is awesome!!!!") // output
    print("great to have you guys")
// cant have a type 'Int' because cannot match values of type 'String'
case "android":
    print("droids......")
case "web":
    print("full stack dudes and duddettes")
    fallthrough // executes the following case
case "backend":
    print("python is cool")
default: //default, meaning for everything else. you need a default.
    print("not part of Pursuit")
}



//=========================================
//              RANGES
//=========================================


let ageRequirement = 18...35 // closed range includes all values
// 18 is the lowerBound and 35 is the upperBound


let halfRangeExample = 18..<35 // does NOT include 35

// ... means that it includes everything

// option click to check data type


//=========================================
//              SWITCH STATEMENT ON RANGES
//=========================================


let classNumber = 2.3 // 2.3 from Coalition for Queens (C4Q) prior to changing to Pursuit

switch classNumber { // can switch on Bool, Int, Double, Character, String
case 0..<2: // half-open range, includes 0 and 1, NOT 2
    print("It's 2014 Coalition for Queens got founded. Now known as Pursuit, also Swift was announced that year at WWDC")
case 2..<3:
    print("It's 2015 and Objective-C is still the leading language to write iOS apps.")
case 3..<4:
    print("2016")
case 4..<5:
    print("2017")
case 5..<6:
    print("It's 2018")
case 6..<7:
    print("It's 2019 and SwiftUI was introduced at WWDC in San Jose")
default:
    print("See you in 2020")
    
}



//=========================================
//              TUPLES
//=========================================


var coordinate = (40.7429595, -73.9441102)

coordinate.0
coordinate.1

var socials = (twitter: "@annafriemoth", instagram: "@annafriemoth")
socials.twitter
socials.instagram
socials.0


//=========================================
//              SWITCH STATEMENT ON TUPLE
//=========================================

let kim = (age: 19, cohort: 6.1, passion: "music")  // you can mix and match data types
let heather = (age: 23, cohort: 6.4, passion: "immigration rights")
let nancy = (age: 34, cohort: 6.3, passion: "video games")


var currentFellow = heather

switch currentFellow {
case(18..<21, _, _): //underscore means ignores
    print("not allowed to drink at events")
case(_, 6.3, _):
    print("iOS is awesome!!!!")
case(_, _, "video games"):
    print("see you at Pursuit's Game night, bring the drinks")
default:
    print("not a current fellow")
}




// format for automatically indentation of code
// command + a, to select all code in Playground
// for formatting: control + i




var grade1 = 7.0
var grade2 = 9.0
var grade3 = 5.0
var yourGrade = 10.0

if yourGrade >  ((grade1 + grade2 + grade3 + yourGrade)/4)
print("above average")













----

var numberOfBagels = 15
let isOverADozen: Bool // variable is getting declared but not initialized
if numberOfBagels > 12 {
    print("isOverADozen")
    isOverADozen = true
} else {
    isOverADozen = false
}
//isOverADozen is true
if isOverADozen { //isOverADozen is true here
    print("You have more than 12!")
} else {
    print("You have less than 12!")
}


// a constant can only be initialized once






practice !!

let firstName = ["Peter", "Phil"]
let lastName = ["Gabriel", "Collins"]
let fullName = ["firstName", " lastName"]

if firstName == ["Peter"] {
 let lastName = ["Gabriel"]
} else if firstName == ["Phil"] {
 let lastName = "Collins"
}

print (\fullName)
