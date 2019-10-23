import UIKit
import Foundation
// String - a collection of unicode compliant characters

/*
 Vocabulary
 - unicode
 - character
 - literal Strings e.g "hello"
 */


// declaring and initializing a literal String
// var message = "Good morning iOS 6.3"

// iterate or looping over a String using a for-in loop
//for char in message {
//    print("character is \(char)")
//}

// length of String using the count property
//print("message count is \(message.count)") //count is a property

//"melinda".count




//=================================================================================
//                      UNICODE
//     e.g a space in unicode is represented by U+0020
//=================================================================================


// a character is made up of one or more unicode scalars
// an example of unicode scaler is \u{301}

// combining unicode scalars
let name = "al\u{0065}\u{301}x"

let bagel = "\u{1F96F}"

// comparing unicode scalar with character
let unicodeLowercaseE = "\u{0065}"
let eCharacter = "e"
if unicodeLowercaseE == eCharacter {
    print("they are equal")
}

// accessing and modifying String
let programmingLanguage = "Swift"
let fellows = ["Kelby", "Stephanie"]
fellows.count // 2

let firstFellow = fellows[0]

// to access first character in "Swift" --> ( which is "S")
// programmingLanguage[0] <-- DOES NOT COMPILE


//firstIndex is of type String.Index not an Int
let firstIndex = programmingLanguage.startIndex

// only way to subscript into a String is using a String.Index value
let firstCharacter =
    programmingLanguage[firstIndex]
print("first character in \(programmingLanguage) is \(firstCharacter)")


// to print the last character
let endIndex = programmingLanguage.endIndex
let lastCharacterIndex =
    programmingLanguage.index(before: endIndex)
let lastCharacter =
    programmingLanguage[lastCharacterIndex]
print("last character in \(programmingLanguage) is", lastCharacter)



//=================================================================================
//                      MAKING A RANGE USING INDICES
//=================================================================================

let alphabets = "abcdefghijklmnopqrstuvwxyz"

// using a for loop, print out he first 6 characters in the alphabet
var counter = 0
for char in alphabets { // 0, 1, 2, 3, 4, 5
    if counter < 6 {
        print(char)
        counter += 1
    } else { break }
}
print("for loop has ended")










// using a for-loop and enumerated print the first six alphabets
for (index, char) in alphabets.enumerated() {
    if index < 6 {
        print("\(char) at index \(index)")
    }   else { break }
}

let alphabetStarIndex = alphabets.startIndex


//=================================================================================
//                      MULTI-LINE STRINGS
//=================================================================================


// good for making ascii art

let multilineString = """
Hello
Hello
Hello
"""
print(multilineString)








//=================================================================================
//                      PART TWO!!!!!
//=================================================================================


//question: given a String switch on it and print all the characters if it is even or print every other character if it is odd

let message = "Good afternoon"

print("there are \(message.count) characters in message")

if message.count % 2 == 0 {
    print("string is even")
} else {
    print("string is odd")
}

// solution for question above: using WHERE
switch message {
case message where message.count % 2 == 0:
    for char in message {
        print(char, terminator: " " )
    }
default:
    for (index, char) in message.enumerated()
        where index % 2 == 1 {
            print(char, terminator: " ")
        
    }
}
// "\n" is the endline escape character
// enumerated exposes the index
// "where" and "control" and "break" are control transfer statements







//=================================================================================
//                      ESCAPE CHARACTERS
//                      e.g "\n" - new line
//                          "\t" - tab
//                          "\"" - quote
//=================================================================================

//newline example
let message1 = "\nHello\niOS 6.3\nGreat to have you!"
print(message1)


//print() also creates a new line


let tabMessage = "\tProgramming is fun"
print(tabMessage)


let quote = "In \"2014\" Swift was introduced"
print(quote)

//=================================================================================
//                      USING STRING INITIALIZATION METHODS
//=================================================================================


let char: Character = "a" //using type annotation to declare the string as a character // declaring and initializing a String from a Character // we have to explicitly use !!!type annotation!!!! to get a valid Character data type
let str = String(char) // turning the character back to a string

print(type(of:char))
print(type(of:str))



// initialize a String from an Integer (Int)
let currentYear = String(2019)
print("current year is \(currentYear)")




let float: Float = 23.56
let double = 45.12
let result = Double(float) + double
print(result)




//=================================================================================
//                      STRING FORMAT E.G FORMATTING DECIMAL PLACES
//=================================================================================


print("the result of the calculation above is", String(format: "%.2f",result)) //lowercase f indicates floating // ".2"  here indicates two decimal places



//=================================================================================
//                      CREATING A RANGE ON A STRING
//=================================================================================

let messageToSelf = "I really love Swift and I'm passionate about coding."



let startIndex = messageToSelf.startIndex  // here we are getting the first position of message to self

let offsetToSomeCharIndex = messageToSelf.index(startIndex, offsetBy: 18)
let range = startIndex...offsetToSomeCharIndex

// DOES NOT COMPILE, SUBSCRIPT [] NOT ALLOWED USING AN INT. ONLY WORKS ON A STRING.INDEX TYPE
// let substring = messageToSelf[0]


let substring = messageToSelf[range]
print("substring is \(substring)")

//=================================================================================
//                      SEARCH FOR THE INDEX OF A CHARACTER WITHIN A STRING
//=================================================================================

//TO GET THE POSITION OF T WITHIN THE WORD SWIFT IN SWIFTMESSAGE

let swiftMessage = "I really love swift ❤️"
//emoji => control, command, space

let charIndex = swiftMessage.firstIndex(of: "t") ?? swiftMessage.startIndex // ?? is nil coalescing

print("We found \"\(swiftMessage[charIndex])\" in swiftMessage String") // put the backslash before the character that you want to escape



//=================================================================================
//                      PREFIX AND SUFFIX
//=================================================================================

//has prefix
let myName = "alex"
if myName.hasPrefix("al") { // hasPrefix() method return a Boo whether the prefix in the String was found
    print("Hi Al! ")
}

//has suffix
let message2 = "questions"
if message2.hasSuffix("ions") {
    print("we also have onions")
}

//contains - searches for specific characters
if message2.contains("q") { // runtime for contains is linear or big o of n or O(n)
    print("message2 contains q")
}



//=================================================================================
//                      SOME CHARACTER PROPERTIES
//=================================================================================


let character1: Character = "y"
if character1.isLetter {  //isLetter is a property
    print("\(character1) is a letter")
}

// isCurrency e.g $

// isPunctuation e.g ?

// isNumber: e.g 4


//=================================================================================
//                      NSString is an Objective-C API
//                      API = APPLICATION PROGRAMMING INTERFACE
//=================================================================================

var message4 = "coding"
//want to replace the g with an explosion emoji
message4 = message4.replacingOccurrences(of: "g", with: "🚀")
//anytime you want to access a built in property or function you use the "." syntax
print(message4)



let fullname = "Alex Paul Hurtado"
let separatedNames =
    fullname.components(separatedBy: " ")
print("there are\(separatedNames.count) items")

print(separatedNames)


