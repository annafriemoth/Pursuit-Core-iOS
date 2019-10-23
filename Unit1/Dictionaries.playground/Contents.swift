import UIKit

// Dictionary: is a collection of key-value pairs, the key needs to conform to the Hashable protocol, this simply means that the key needs to be made unique by a hashing algorithm. Dictionaries are unordered collections.

// key : value
// hashable returns you a unique value
// key needs to be unique
// has table is a unique key with some values

let name = "alex"
let hashValue = name.hashValue
print("hash value of \(name) is \(hashValue)")

//===========================================================================================
//                      initializing and populating dictionaries
//===========================================================================================

// method 1: uses the initialization method
// here we declared and initialized an empty dictionary
// key is of type Int
// value is of type String

var nameOfIntegers = [Int: String]()

// count number of elements in nameOfIntegers
// count is a property on the Collection Protocol
// dictionary, arrys and sets conform to Collection
// a property is a variable or constant on a type
print("there are \(nameOfIntegers.count) elements currently in the nameOfIntegers dictionary")

// assign a key-value pair to nameOfIntegers (element) pair to nameOfIntegers
nameOfIntegers[12] = "twelve"



print("there are \(nameOfIntegers.count) elemenets now")

nameOfIntegers[7] = "seven"
print(nameOfIntegers)

// can we index the first element using [0]

// the code ebelow says find me the value where the key is 0
let num = nameOfIntegers[0] ?? "zero" // because our key is an Int
print("Num is \(num)")



// method 2:
// var airports: [String: String] = [:]  - this is valid, empty dictionary   // [String: String] is dictionary syntax
var airports: [String: String]
airports = ["Copenhagen": "CPH",
            "Los Angeles": "LAX",
            "Saint Luica": "LCU"]
print("there are \(airports.count) airports currently")


//===========================================================================================
//                      accessing dictionary values
//===========================================================================================

// we also have an isEmpty property on dictionary
if airports.isEmpty {
    print("airports is empty")
} else {
    print("there are \(airports.count) airports")
}

//===========================================================================================
//                      looping through a dictionary
//===========================================================================================

let bucketLists: [String: String] = ["Sweden": "Stockholm", "Austrailia": "Cairnes", "Mexico": "Cozumel", "New Zealand": "Wellington", "Morrocco": "Cassablanca"]

for (country, place) in bucketLists {
    print("I want to visit \(place) located in \(country)")
}

let destination = bucketLists["New Zealand"] ?? "unknown destination"
print("your next destination is \(destination)")
// this is returning as an Optional because there is no guarentee that the destination is within the array
// the only way to access the value is through the key



let favoriteAlbums = ["John Mayer": "Room for Squares", "Post Mallone": "Stoney", "Tupac": "All Eyez on Me", "Drake": "Take care", "Teyana": "k.t.s.e"]
// PROBLEM WE ARE SOLVING HERE IS - given album name, find the artist
// using a for-in loop to search for a given value
var artistName = ""
for (currentArtist, albumName) in favoriteAlbums {
    if albumName == "Stoney" {
        artistName = currentArtist
    }
}
print("\(artistName) created the Stoney album.")
 

// get values from a dictionary
// here we are extracting all the values from the favoriteAlbums dictionary
let albums = Array(favoriteAlbums.values)
for album in albums {
    print("album is \(album)")
}

// get keys from a dictionary
let artists = Array(favoriteAlbums.keys)
for artist in artists {
    print("artist is \(artist)")
}

// dictionaries are unsorted so we will demo how to sort the values and print in a sorted matter
// given albums, sort by artist name
for artistName in favoriteAlbums.keys.sorted(){ // sorted gives us alphabetical order in ascending order (can also descend the order) // .reversed gives us a descending order
    print("artists name sorted is \(artistName)")
}
