import UIKit


//=====================================================================================================
// PART 1
//=====================================================================================================
// Enumerations or enums: is a group of related values or items
//      e.g days of the week, mta train lines, number of fingers, compass points

// enum keyword starts with the enum definition
// followed by the name of the enum, which should start with a capital letter to keep with Swift coding convention, also this signifies that the enum is a data type to the reader of your code.
enum CompassPoint {
    case north
    case south
    case east
    case west
}

// create a enum of days of the week
enum DaysOfTheWeek {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
}

enum Planet {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}



//=====================================================================================================
// using a switch statement we will switch on an enum instance
//=====================================================================================================


// instance of a String
let name = "Bob"

// creating an instance of the enum DayOfTheWeek
// DaysOfTheWeek below is a custom data type
// day is an instance
let day = DaysOfTheWeek.tuesday
var weekend = DaysOfTheWeek.saturday
weekend = .sunday
// var someDay = .friday DOES NOT COMPILE, CANT INFER TYPE IS ENUM

// switch must be exhaustive, must go through all the days
switch day {
case DaysOfTheWeek.monday:
    print("Back to Pursuit")
case DaysOfTheWeek.tuesday:
    print("Enums lab is due")
case .wednesday:
    print("Professional skills")
case .thursday:
    print("Introduction to classes")
case .friday:
    print("Classes and Calculator labs are due")
case .saturday:
    print("What should i do today")
case .sunday:
    print("Maybe I should do some prep work for class tomorrow")
}


//=====================================================================================================
// Iterating through an enum's cases
//=====================================================================================================

// Beverages enum is conforming to the protocol CaseIterable
// by conforming to CaseIterable, we are able to get a count
// of all the cases in an enum

enum Beverage: CaseIterable {
    case coffee, tea, juice
}

print("There are \(Beverage.allCases.count) beverages")

for drink in Beverage.allCases {
    print("current beverage is \(Beverage.self)")
}



//=====================================================================================================
// PART 2
//=====================================================================================================
//=====================================================================================================
//                          associated values - adds more values (types to a case)
//=====================================================================================================
enum MTALine {
    case redLine(Int)
    case greenLine(Int)
    case purpleLine
    case blueLine
    case orangeLine
    case brownLine
    case yellowLine(trainName: Character, startTime: Int, endTime: Int)
    case greyLine
}

// below we are instantiating a train using the MTALine
// here was have 3 instances of MTALine below, namely rTrain, oneTrain and fiveTrain
let rTrain = MTALine.yellowLine(trainName: "R", startTime: 8, endTime: 12)
let fiveTrain = MTALine.greenLine(5)
let oneTrain = MTALine.redLine(1)
func trainInformation(train: MTALine) {
    switch train {
    case .redLine:
        print("The 1, 2, 3 trains are running on time.")
    case .yellowLine(let trainName, let sTime, let eTime):
        print("The \(trainName) train runs from \(sTime)am to \(eTime)am")
    case .greenLine(let trainName):
        print("You're on the \(trainName), maybe stop at Bowling Green and take a city walk.")
    default:
        print("All trains running normally")
    }
}
trainInformation(train: rTrain)
trainInformation(train: oneTrain)
trainInformation(train: fiveTrain)

// 1. add associated values for greenLine of type Int, use 4, 5 or 6 to create a new instance of a constant named fiveTrain
// 2. using our trainInformation() function pass in the fiveTrain instance, and add a new case in the switch statement for .greenLine



//=====================================================================================================
//                          declaring methods inside enums
//=====================================================================================================

enum ProgrammingLanguage {
    case swift
    case python
    case objectivec
    case go
    case r
    case java
    case javascript
    
    // functions in custom types are called methods
    func info() {
        // we need to switch on an instance of ProgrammingLanguage
        switch self { // self if the instance that calls info()
        case .objectivec:
            print("Last major update was in 2014")
        case .swift:
            print("Swift was introduced in 2014")
        case .java:
            print("Java is used to build android apps, also heavily used on Wall Street.")
        default:
            print("All languages are fun!!!")
        }
    }
        func salaryInfo() {
            switch self {
            case .swift:
                print("1 million starting salary")
            default:
                print("Wasting your time")
            }
        }
    }

// here we have swiftLanguage is an instance of ProgrammingLanguage
let swiftLanguage = ProgrammingLanguage.swift
swiftLanguage.info()


// create a ProgrammingLanguage instance that's not swift and call .salaryInfo() method


let javaLanguage = ProgrammingLanguage.java
javaLanguage.salaryInfo()

//=====================================================================================================
//                          raw values
//=====================================================================================================


enum Day: Int {
    case monday = 1
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
}


enum Fellow {
    case cohortCycle
}

//print(Fellow.cohortCycle.rawValue) DOES NTO COMPILE! NO RAWVALUE PROVIDED

print(Day.monday.rawValue) // default starting case of an Int rawValue is 0

//=====================================================================================================
//                          initializing an instance of an enum with a rawValue
//=====================================================================================================


// nil-coalescing to unwrap optional enum rawValue type
let weekends = Day(rawValue: 10) ?? Day.saturday
print(weekends)

// optional-binding to unwrap optional enum
if let possibleDayOff = Day(rawValue: 6) {
    switch possibleDayOff {
    case .saturday:
        print("Great day for a BBQ")
    case .sunday:
        print("Really want to go swimming today")
    default:
        print("Just another day")
    }
} else {
    print("Not a valid day of the week.")
}
