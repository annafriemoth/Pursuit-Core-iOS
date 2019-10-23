import UIKit

// Question Four
// Write a function called sortedNamesByLastName(in:) that takes in an array of tuples
// of type (String, String) and returns an array of tuples sorted by last name.

// Your function here

// input of our function: unsorted last name array of tuples
// output of our function: sorted by last name array of tuples

func sortedNamesByLastName(in names: [(String, String)]) -> [(String, String)] {
    
    let result = names.sorted { name1, name2 in
        // < means ascending, or a....z
        // > means descending, or z....a
        name1.1 < name2.1
    }
    return result
}


 let firstAndLastTuples = [
     ("Johann S.", "Bach"),
     ("Claudio", "Monteverdi"),
     ("Duke", "Ellington"),
     ("W. A.", "Mozart"),
     ("Nicolai","Rimsky-Korsakov"),
     ("Scott","Joplin"),
     ("Josquin","Des Prez")
 ]
 let expectedOutputFour = [
     ("Johann S.", "Bach"),
     ("Josquin","Des Prez"),
     ("Duke", "Ellington"),
     ("Scott","Joplin"),
     ("Claudio", "Monteverdi"),
     ("W. A.", "Mozart"),
     ("Nicolai","Rimsky-Korsakov")
 ]
let outputFour = sortedNamesByLastName(in: firstAndLastTuples)

print(sortedNamesByLastName(in: firstAndLastTuples))
    
assert(outputFour.elementsEqual(expectedOutputFour, by: { $0 == $1 }), "Expected output to be \(expectedOutputFour), but found \(outputFour)")


//=========


// return an array where elements are less than 5


let arr = [4, 5, 1,-7, -99]

print(arr.filter { $0 < 5 }.sorted())



//=========

let filteredArr = arr.filter { $0 < 5 }
print(filteredArr) // [4, 1, -7, -99][

// using sorted() which does not take any parameters
let sortedArr = filteredArr.sorted()

//=========
// sorted using closure which takes 2 arguments
// > means descending z....->a and < means ascending a....->z
let names = ["Alex", "Tiffany", "Antonio", "Genesis"]
let sortedNamesUsingClosure = names.sorted { $0 > $1 }
print(sortedNamesUsingClosure)


//=========
// given an array of names return all the names uppercased
// input: ["Alex", "Tiffany", "Antonio", "Genesis"]
// output: ["ALEX", "TIFFANY", "ANTONIO", "GENESIS"]
let moreNames = ["Alex", "Tiffany", "Antonio", "Genesis"]
let sortedNamesUsingMap = moreNames.map { $0.uppercased()}
print(sortedNamesUsingMap)


//=========
// recreating the built-in map function
// map function will take 2 parameters
// first parameter is an array of ints
// second parameter is a closure
func customMap(arr: [Int], closure: (Int) -> Int) -> [Int] {
    var transformedArr = [Int]()
    
    for num in arr {
        // perform transformation based on closure and append result in transformedArr
        transformedArr.append(closure(num))
    }
    return transformedArr
}
// using customMap function above takes in an array of numbers and returns the squared values of each of those elements
// input: [1, 2, 3, 4, 5, 6, 7]
// output: [1, 4, 9, 16, 25, 36, 49]



let numbers = [1, 2, 3, 4, 5, 6, 7]
let squaredNumberArray = customMap(arr: numbers) {$0 * $0}
print(squaredNumberArray)
