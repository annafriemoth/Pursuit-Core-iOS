import UIKit
import Foundation

// Questions Review: Sets

// Questions Two
// Create a new array scoresThatAppearOnce that has all the elements from scores that appear exactly once.
// It should be in the same order as the original.
let scores = [1, 77, 83, 32, 77, 77, 83, 32, 99]
var scoresThatAppearOnce = [Int]()

// Your code here
var visitedScores: Set<Int> = []
var uniqueScores: Set<Int> = []
for score in scores {
    if !visitedScores.contains(score) { // haven't seen this score
        visitedScores.insert(score)
        uniqueScores.insert(score)
    } else { // visited this value, so it's not unique
        uniqueScores.remove(score)
    }
}
scoresThatAppearOnce = uniqueScores.sorted()


//assert(scoresThatAppearOnce == [1, 99], "Was expecting [1, 99], but got \(scoresThatAppearOnce)")

// runtime efficiency of the algorithm
// contains on a set in constant time 0(1)
// contains on an Array is linear time 0(n)

// Question Five
// Determine if a String is a pangram. A pangram is a string that contains every letter of
// the alphabet at least once.
// e.g "The quick brown fox jumps over the lazy dog" is a pangram
// e.g "The quick brown fox jumped over the lazy dog" is NOT a pangram
let strOne = "The quick brown fox jumps over the lazy dog"
let strTwo = "The quick brown fox jumped over the lazy dog"
let strThree = "Sphinx of black quartz, judge my vow"

var strOneIsPangram: Bool = false
var strTwoIsPangram: Bool = false
var strThreeIsPangram: Bool = false

// Your code here
let alphabets: Set<Character> = Set("abcdefghijklmnopqrstuvwxyz")
var trimmedStr = ""
for char in strOne.lowercased() {
    if alphabets.contains(char) {
        trimmedStr += String(char)
        
    }
}
strOneIsPangram = Set(trimmedStr) == alphabets


//assert(strOneIsPangram == true, "Was expecting true, but got \(strOneIsPangram)")
//assert(strTwoIsPangram == false, "Was expecting false, but got \(strTwoIsPangram)")
//assert(strThreeIsPangram == true, "Was expecting true, but got \(strThreeIsPangram)")
