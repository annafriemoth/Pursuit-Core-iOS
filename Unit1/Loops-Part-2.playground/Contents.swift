import UIKit


// LOOPS PART 2




// using the str variable print "Hello, playground" five times using the for-in loop

var str = "Hello, playground"

for _ in 1...5{
    print(str) // 1, 2, 3, 4, 5
}


// to print numbers 1 through 5 -
for num in 1...5{
    print(num)
}

var seconds = 10
while seconds >= 0 { // body, scope, block or the while all refers to what's between the open curly bracket { and the close } curly bracket
    print(seconds)
    seconds -= 1 // decrements the seconds by 1
}


//=================================================================================
//                      REPEAT-WHILE LOOP
//=================================================================================


var isPlaying = false
var currentLevel = 1
let finalLevel = 10

repeat {
    
    // code here
    
    if isPlaying { // can also write "if isPlaying == true"
        // using String interpolation to show current level
        print("playing level \(currentLevel)")
        currentLevel += 1
        if currentLevel == finalLevel {
            print("I will definitely recommend this game.")
            isPlaying = false // stops the game
        }
        
    } else {
    // player is seeing our game for the first time
        print("Trying out Pursuit Arcade for the first time.")
        isPlaying = true // in a macOS command line app you can prompt the user to continue or not, this would set isPlaying to true or false
    }
    
} while isPlaying == true



//=================================================================================
//                      NESTED LOOPS
//=================================================================================

// multiplication table from 1 to 5

for i in 1...5 { // outer for loop - executes 5 times
    // first time it enters the for loop i is 1
    for j in 1...5 { // inner for loop - executes 5 times
        print("\(i) * \(j) is \(i * j)")
        // 1 * 1 = 1
        // 1 * 2 = 2
        // 1 * 3 = 3
        // 1 * 4 = 4
        // 1 * 5 = 5
        
        // 2 * 1 = 2
        // 2 * 2 = 4
}
}


//=================================================================================
//                      LABELS IN LOOPS
//=================================================================================

let product = 50 // product is the multiplication of two values e.g 4 * 5 = 20
outerloop: for i in  1...10 {
    innerloop: for j in 1...10 {
        if i * j == product {
            print("product was found by multiplying \(i) * \(j)")
            break outerloop
            } else {
            print("keep searching.....")
        }
    }
    innerloop2: for _ in 1...5 {
    print("Hello Matt")
}
    print("done running outerloop..")
}
