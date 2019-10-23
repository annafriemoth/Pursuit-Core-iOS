import UIKit

// Array - an array is an ordered collection of items (think of it as a bucket of items)

//==============================================================================================
//                  initializing arrays
//==============================================================================================

var bucketList: [String] // using Type Annotation we are declaring an array of type String
                         // has to be within square brackets to make it an array

bucketList = ["France", "Australia", "South Africa", "Aruba", "Cozumel", "Brazil", "Japan"]
print(bucketList)

// count the items in the array
print("There are \(bucketList.count) countries on my bucket list") // prints There are 7 countries on my bucket list


var threeDoubles = Array(repeating: 0.0, count: 3)
print(threeDoubles) // prints [0.0, 0.0, 0.0]


//==============================================================================================
//                  accessing values inside an array
//==============================================================================================


// tuples below -
var juan = (name: "Juan", cohort: 6.3, hobby: "gaming") // this is a tuple
var shaniya = (name: "Shaniya", cohort: 6.3, hobby: "music yeah") // this is a tuple
var fellows = [juan, shaniya]

// array of planets below -
// declaring an array using an array literal
var planets = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"]
var dwarfPlanets = ["Pluto"]

// accessing "Earth" planet using subscripting (subscripting is [2])
let thirdRockFromTheSun = planets[2]
print ("Our home planet is \(thirdRockFromTheSun)")

// to access last planet -
let lastPlanet = planets[planets.count - 1] //
print ("The last planet in our solar system is \(lastPlanet)")

// to print the second to last planet -
let secondToLast = planets[planets.count - 2] //
print("Second to last planet is \(secondToLast)")

// Print the middle planet
let middlePlanet = planets[planets.count / 2]
print("The middle planet is \(middlePlanet)")



//==============================================================================================
//                  some properties and methods on arrays
//==============================================================================================

// property - is a variable on an object e.g planets.count
// methond - is a function that runs on an instance of an object e.g planets.append(:_)


// first
// if planets.first is NOT nil, assign the value to the firstPlanet variable
// think about planets.first as being a condition of true or false where if first does not exist, the condition is false, if first exists, then the condition is true
// however long term we will come to realize that planets.first implies that either we have a valid value of String or not in the case that it's nil i.e planets array is empty
// here we are using optional binding to unwrap the first? value


// below is both ways of declaring the array -  both are valid
// var programmingLanguages: [String] = [] // <-- here we are using type annotation
var programmingLanguages = [String]() // <-- here we are using type inference

// using isEmpty property on an array
// isEmpty is preferable over using .count
if programmingLanguages.isEmpty {
    print("we need to start programming")
} else {
    print("programming is fundamental")
}

// using .count
if programmingLanguages.count == 0 {
    print("what are you waiting for????")
}

//==============================================================================================
//                  append to an array - add to an array
//==============================================================================================

programmingLanguages.append("Swift")


if let firstProgrammingLanguage = programmingLanguages.first {
    // if we have a valid value of String, we enter this if block {......}
    print("first programming language is \(firstProgrammingLanguage)")

} else {
    print("looks like you haven't started using any programming languages")
}

//==============================================================================================
//              remove all elements in an array using removeAll()
//              using the remove function remove(at:) to remove items from an array
//==============================================================================================


//GO BACK TO THIS, IT SHOULDNT BE PRINTING THE RANDOM PLANET AS PLUTO, IT SHOULD PRINT PLANETX

//planets.removeAll() // removes all the planets - 0 planets

print("there are \(planets.count) planets in the solar system")
print("there are \(planets.count)")

//planets.append("Pluto")

planets.append("there are \(planets.count) planets")

print(planets) //  9 planets


let removedPlanet = planets.remove(at: planets.count - 1) // 9 - 1 = 8

print("looks like \(removedPlanet) was ditched again :(")

print("there are \(planets.count) planets")

let randomPlanet = planets.randomElement() ?? "PlanetX" // using nil-coelescing ?? we default to value of "Earth"
print("random planet is \(randomPlanet)")

// compile-time errors
// runtime-errors

// popLast()

let oopsAnotherPlanetIsGone = planets.popLast() ?? "Ameni's Planet"

print("another planet was gone \(oopsAnotherPlanetIsGone)")


//==============================================================================================
//               modifying arrays
//==============================================================================================

var classRoom1 = ["Maigrett", "Gregg", "Adam"]
var classRoom2 = ["Aaron", "Jack", "Vic"]

// adding or concatenating arryas together
// NOTE: when adding arrays together they need to be of the same data type
classRoom1 += classRoom2
print("classroom 1 has \(classRoom1.count) of fellows")



//==============================================================================================
//               iterating or looping through arrays
//==============================================================================================

// method 1: iterating through array
for planet in planets {
    print("Planet name is \(planet)")
}

// (adding back Neptune)
planets.append("Neptune")


// method 2: iterating using enumerated() to gain access to the current index in the for-in loop
for (index, planet) in planets.enumerated() {
    print("\(planet) \(index + 1)")
}

// method 3: using a range
for index in 0..<planets.count {
    print(planets[index])
}


// ==========================================================================================
//                                  Arrays Part 2
// ==========================================================================================

var musicalArtists = ["Bob Marley", "Burning Spear", "Steel Pulse", "Mos Def", "The Beatles", "Norah Jones", "John Mayer", "Lauryn Hill"]

//let artist = musicalArtists[2]
//print("currently playing \(artist) on Spotify")


// ==========================================================================================
//                                  Array Slice
// ==========================================================================================
// array slice
// a view of the array
let reggaeStars = musicalArtists[1...3]
print("Some Reggae superstars are \(reggaeStars)")

// modify the value of an array using subscripting
musicalArtists[1] += " (Reggae Legend)"
print(musicalArtists)

// replace an element using subscript
musicalArtists[musicalArtists.count - 1] = "Prince"

print(musicalArtists)


// tuple review
let artist1 = (name: "John Mayer", genre: "Pop")
let artist2 = (name: "Beyonce", genre: "Pop, Country, Hip-Hop, Soca, Afro-beat")
let artists = [artist1, artist2]
for artist in artists {
    print("artist name is \(artist.name)")
}

//==========================================================================================
//                                 Multi-Dimensional Arrays
//==========================================================================================

let matrix = [[1, 2, 3],
                [4,5,6],
                [7,8,9]]

let exampleArr = ["Brendon", "Eddie"]

// print out the size of the multi-dimensional array
print("current count is \(matrix.count)")

// using a for-in loop print out the elements of the matrix
// this matrix is both an array and a multi-dimensional array
for arr in matrix {
    
    // each element in the matrix is an array
    for num in arr { // e.g first time ran  => 1, 2, 3
        print(num, terminator: " ")
    }
    print() // creates new line
}
 
// using subscripting on a multi-dimensional array
let firstInnerArray = matrix[0]
print("first element in matrix array is \(firstInnerArray)")

// print out last element
// count of matrix is 3
// how to find last index in matrix array
// count - 1 gets us 2
// then we can use matrix[2] // do not hard code!!!!
let lastInnerArray = matrix[matrix.count - 1] // hard code version of this is to  matrix[2]
print("the last element in matrix array is \(lastInnerArray)")


