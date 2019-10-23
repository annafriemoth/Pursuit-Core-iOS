import UIKit

// Sets: an unordered collection whose elements are unique

//=============================================================================================
//                  initializing and populating a set
//=============================================================================================

// protocols: Hashable, Sequence, Collection

// below is how to initialize a set in three different ways
var accountNumbers: Set<Int> = [] // here we are using type annotation
var accountNumbers2 = Set<Int>() // here we are using set initialization
var accountNumbers3: Set<Int> = [283409238, 28937498, 28347893] // type annotation using a literal collection
// heterogeneous array
var mixedArr: [Any] = [3289, "Tiff", false]
for element in mixedArr {
    if let num = element  as? Int { // typecasting - optional downcasting as?, forced downcasting as!
        print("num is \(num)")
    }
    if let str = element as? String {
        print("string is \(str)")
    }
    if let bool = element as? Bool {
        print("bool value is \(bool)")
}
}

//=============================================================================================
//                  accessing values in a set
//=============================================================================================
 
// isEmpty
if accountNumbers.isEmpty {
    print("accountNumbers is empty")
}

// count
print("There are \(accountNumbers3.count) elements in accountNumbers3")


// there are 4 elements in this set below because white repeats
let colors = Set(["blue", "white", "red", "yellow", "white"]) // here we are converting an array of strings to a set removes any deplicates from the array since elements in a set has to be unique
print(colors)

//=============================================================================================
//                  using contains to find an element in a set
//=============================================================================================
 
let fellows: Set<String> = ["Christina", "Gregg", "Maitree", "Joshua"]
for fellow in fellows {
    print(fellow)
}
if fellows.contains("Christian") {
    print("found fellow")
}

//=============================================================================================
//                  performing set operations
//=============================================================================================

let a: Set<Int> = [1, 2, 3, 4, 5, 6]
let b: Set<Int> = [5, 6, 7, 8]


// intersection
let intersection = a.intersection(b).sorted() // .sorted() automatically sorts it in ascending order // .reversed automatically sorts it to a descending order
print(intersection) // [5, 6]

// symmetricDifference
let symmetricDifference = a.symmetricDifference(b).sorted()
print(symmetricDifference) // [1, 2, 3, 4, 7, 8]

// union
let union = a.union(b).sorted() // gives us all of the elements in a and b
print(union)

// subtracting
let subtracting = a.subtracting(b)
print(subtracting)



let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]

houseAnimals.isSubset(of: farmAnimals)
// true
farmAnimals.isSuperset(of: houseAnimals)
// true
farmAnimals.isDisjoint(with: cityAnimals)
// true
