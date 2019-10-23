import UIKit

// classes: are building blocks that enable us to create complex "objects" in our program. Those objects are created using properties and methods.


//==============================================================================================
//                          class syntax
//==============================================================================================

class MyFirstClass {
    
}


// Day now has added functionality to count how many cases it has e.g here it is 3
// here, enum Day conforms (adds more functionality) to CaseIterable
enum Day: CaseIterable {
    case monday, tuesday, wednesday
}
Day.allCases.count

//==============================================================================================
//                          inheritance - ONLY classes can inherit from other classes (single                                             inheritance)
//                                      - structs DO NOT inherit from other structs
//==============================================================================================

class Person {
    var name = "Jane Doe" // stored property
    var age = 21   // stored property
    
    // instance methods
    func info() {
        print("This person name is \(name) and age is \(age)")
    }
}


// below, the Fellow inherits from Person (above)
// Fellow is a subclass of Person
// Person is the parent or superclass of Fellow
// in Swift, we only have single inheritance, meaning you can ONLY inherit from one parent

// Object-oriented programming consists of the following concepts
// - inheritance
// - encapsulation: use private access modifiers on your properties and access them externally through methods
// - polymorphism: changing the form of an object


// The class Fellow inherits from the Person class that's above
class Fellow: Person {
    // DOES NOT COMPILE BECAUSE PARENT HAS THE SAME METHOD NAME
    // SO FELLOW NEEDS TO USE the override keyword (below)
    // func info() {
    // }
    override func info() {
        print("\(name) is a fellow at Pursuit and is \(age) years old")
    }
}


class Employee: Person {
    var position = "iOS developer" // property
    var salary = 85_000 // property
    
    override func info() { // instance methods
        print("\(position) is making \(salary)")
}

}

// creating an instance of Fellow() - creating an instance is creating a constant or variable of that type
let brendon = Fellow()
brendon.name = "Brendon"
brendon.age = 31
brendon.info()

// before the Fellow class over rode info() method from the Person class, this was the output from the print statement:  "This person name is Brendon and age is 31"
// after over riding info() in the Fellow class, the print statement comes from the overriden method: "Brendon is a fellow at Pursuit and is 31 years old"


// BELOW DOES NOT COMPILE BECAUSE ONLY CLASSES CAN INHERIT
/*
struct Artist { // - if Artist is a protocol, then code WILL compile

}

struct PopStar: Artist {

}
 */

//==============================================================================================
//                          polymorphism - changing form on an object
//==============================================================================================

// instance of a Person
let tom = Person()
tom.name = "Tom"

// instance of an Employee
let john = Employee()
john.name = "John"

// instance of a Fellow
let bienbenido = Fellow()
bienbenido.name = "Bienbenido"

// an array of instances from above
let people = [tom, john, bienbenido]

// if we were to loop over the people array, what, for example, would be the info() message for bienbenido

for person in people {
    print(person.info())
}

//===================================================================================================
//                         structs are value-types - meaning assigning a new variable
//                                                    that new variable gets a copy of
//                                                    the original. Changing the copy
//                                                    does not change the original
//
//                         classes are reference types - multiple instances point to the same
//                                                      - object meaning object b can mutate object a
//====================================================================================================

// creating an instance of Fellow() named anna
let anna = Fellow()
anna.name = "Anna"
print(anna.name) // Anna

// assigning luba the anna object
let luba = anna // both anna and luba are pointing to the same object
print(luba.name) // Anna

luba.name = "Luba"
print(luba.name) // Luba

// what is Anna's name if printed
print(anna.name) // Luba


//==============================================================================================
//                          Swift provides a way to check for object equality of
//                          identity using ===
//==============================================================================================

if anna === luba { // === is ONLY available on classes
    print("both objects are pointing to the same reference")
}


//==============================================================================================
//
//              introduction to initializer in classes
//
//==============================================================================================


struct Dog {
    var breed: String
    var age: Int
    
}

// below we are creating an instance of Dog using the memberwise initializer of the Dog struct.
// ****ONLY structs provide memberwise initializers!
var frenchBulldog = Dog(breed: "French Bulldog", age: 7)

//****BELOW IS NOT VALID, WILL BE AN ERROR
//****compiler error if class does not provide default values for ALL properties
//class Game {
//    var name: String
//    var noOfPlayers: Int
//}
//****BELOW IS THE CORRECT VERSION FOR CLASSES
class Game {
    // properties
    var name: String
    var noOfPlayers: Int
    
    // initializers
    init(name: String, noOfPlayers: Int) { // init is a method
        // self is the instance
        self.name = name // becomes basketball.name = "basketball (see below)
        self.noOfPlayers = noOfPlayers // becomes basketball.noOfPlayers = 5 (see below)
        
    }
    // instance method
    func info() {
        print("\(name) has \(noOfPlayers) players")
    }
}


// below we are creating an instance of Game() called basketball
let basketball = Game(name: "Basketball", noOfPlayers: 5)
let football = Game(name: "Football", noOfPlayers: 11)


basketball.info()

// accessing properties
basketball.name = "NBA"

basketball.info()



//==============================================================================================
//
//              creating instances from a dictionary
//
//==============================================================================================

class Playlist {
    var name: String
    var trackCount: Int
    var description: String
    var isTop100: Bool
    
    // initializer
    init(name: String, trackCount: Int, description: String, isTop100: Bool) {
        self.name = name
        self.trackCount = trackCount
        self.description = description
        self.isTop100 = isTop100
    }
    // instance method
    func info() {
        print("\(name) contains \(trackCount) tracks. \(description)")
        if isTop100 {
            print("\(name) is on the top 100 Spotify list")
        }
    }
}

let playlistDict: [String: Any] = ["name": "Best Pop Songs 2019", "trackCount": 128, "description": "Awesome playlist", "isTop100": true] // *** String: Any - expects any type

// QUESTION: write a function that takes a dictionary of type [String:Any] and returns an optional Playlist?
func getPlaylist(dict: [String: Any]) -> Playlist? {
    // below we are accessing the name key in dict["name"]
    // used typecasting of Any type to String using optional downcasting (optional downcasting = as?)
    // use nil-coalescing to unwrap optional String? to String
    let name = dict["name"] as? String ?? "no name available"
    let trackCount = dict["trackCount"] as? Int ?? 0
    let description = dict["description"] as? String ?? "no description is available"
    let isTop100 = dict["isTop100"] as?  Bool ?? false
    let playlist = Playlist(name: name, trackCount: trackCount, description: description, isTop100: isTop100)
    return playlist
}

// calling the getPlaylist function which returns a Playlist
let playlist = getPlaylist(dict: playlistDict)
playlist?.info() 

