import UIKit

// Questions Review: October 4, 2019

// Strings Lab //

// Question: Given a String use a for-in loop to reverse it. e.g input: "hello" output: "olleh"



let message = "hello"
var reversedString = ""


let str1 = " "
let str2 = ""

if str1.isEmpty {
    print("emptySpace is empty")
}   else {
    print ("str1 is Not Empty")
    }

if str2.isEmpty {
    print("str2 is empty")
}


for currentChar in message {

    // we want to loop through the given message String and add the characters we visit in reverse order to our reversedString variable
 
    
print("currentChar \(currentChar) reversedString: \(reversedString)")
    
reversedString = currentChar.description + reversedString
// another optino for above is - reversedString = String(currentChar) + reversedString
    
    
print("currentChar \(currentChar) reversedString: \(reversedString)")
    
print ("===================================")
  

   
    
    
    // (currentCharacter + reversedString)
    // 1. "h" + "" => reversedString = "h"
    // 2. "e" + "h" => reversedString = "eh"
    // 3. "l" + "eh" => reversedString = "leh"
    // 4. "l" + "leh" => reversedString = "lleh"
    // 5. "o" + "lleh" => reversedString = "olleh"

}


print(reversedString)










// Arrays Lab //

/*
 Question:
 Given an array of Strings, find the String with the most a's in it.
 input: ["apes","abba","apple"]
 output: "abba"
 */
let arr = ["apes","abba","apple","blaaaaaaaah"]

// how do we keep track of the String with the most "a" characters?
var overallCount = 0
var stringWithMostAs = ""

for str in arr {
    // in the future we can use filter{} here
    // we will create a local variable to keep track of a's in current String
    var localCount = 0 // has local scope within the for loop // scope entails a variable can only be accessed within it its curly bracket boundaries {.....}
    for char in str { // String.Element is the same as Character
        if char == "a" { // "apes"
            localCount += 1 // if the character is a, aCount adds one to the total
        }
    }
    // here we will be comparing a's count
    if localCount > overallCount { // first time looking at apes, apes is more
        overallCount = localCount // override overallCount
        stringWithMostAs = str // override String being tracked
}
}
print("\(stringWithMostAs) has the most a's which has a count of \(overallCount)")
// if you declare a variable within a scope of a "for in" loop, you can't use it outside of the scope of a for loop


