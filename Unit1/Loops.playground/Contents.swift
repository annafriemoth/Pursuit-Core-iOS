import Foundation

var str = "Hello, playground"

print(str)


//==============================================================
//              RANGE - CLOSE RANGE AND HALF RANGE
//==============================================================

let closeRange = 1...10 // inclusive
let halfRange = 1..<10 // exclusive or half close range

//==============================================================
//              FOR IN LOOP
//==============================================================

// for num in 1...10    { // inclusively prints 1 to 10
    // print() default terminator is "/n"
    // the new line character
   // print(num, terminator:" ") // default parameter is "\n" replace with " "
//}

for num in 5...25 {

if num > 9 {
    print(num, terminator: " ")
} else {
    print(num, terminator: " hi ")
}
}

print()

//==============================================================
//              PREVIEW USING LOOPS WITH ARRAYS
//==============================================================

// array of String's
let pursuitStacks = ["iOS", "web", "android"]
// you can also write let pursuitStacks: [String] = ["iOS", "web", "android"]
for pursuitClass in pursuitStacks {
    // printing using String Interpolation
    print("Pursuit class is \(pursuitClass)")
}

let fellows = ["Tiffany", "Yulia", "Joshua", "Matiree"]
for fellow in fellows {
    if fellow == "Joshua" {
        print("\(fellow) is awesome!")
    }
    else {
    print("\(fellow) is awesome too!")
    }
}

let temperatures = [69, 75, 87, 64, 64, 61, 68]
for temp in temperatures {
    switch temp {
    case 87...: // meaning "include 87 and greater"
        print("Catch me at the beach")
    default:
        print("Just another day")
    }
    
}

let message = "Happy Monday iOS 6.3"
// question: use a for loop to print the message variable 5 times
for _ in 0...5 { // ... is inclusive, ..< exclusive
    // first time it is 0
    // next time it is 1
    // next time it is 2
    // next time it is 3
    // next time it is 4
    print(message)
}


//==============================================================
//              CONTROL TRANSFER STATEMENT
//                where, break, continue
//==============================================================



// WHERE
// Question: use where to print only numbers ending in 5 inclusively
for number in 1...100 where number % 10 == 5{
    print("\(number)'s last digit is 5")
}

// BREAK - exit loop or end loop, stop looping
for num in 1...10 {
    if num == 7 {
        print("Happy Birthday, Miles, you're only \(num) years old")
        break // exit loop, stop searching, stop looping
    } else {
        print("Not your birthday yet")
    }
}

// CONTINUE
for num in 1...10 {
    if num % 2 == 0 { // even numbers
        // increment (add
        // increment to next value
        // e.g if current value is 2
        // 2 mod (modulo operator - remainder) 2 or 2 % 2 is 0
        // next value is // to the next value
        continue
    }
    print(num)
}


//==============================================================
//              WHILE LOOP
//==============================================================

var seconds = 30
while seconds >= 0 {
    if seconds == 0 {
        print("🚀")
    } else {
        print("countdown \(seconds)....")
    }
   
    // while condition NEEDS a way to stop the loop or it will run infinetely until your plaground explodes hahah runs out of resources
    
    // without decrementing seconds the while loop will be what's known as an infinite loop
    
    seconds -= 1 // here we are decrementing seconds by 1
}





