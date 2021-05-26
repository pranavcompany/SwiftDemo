import Foundation

// Ex: Read-only Computed Properties :- It has getter an optional setter to retrive and set other properties and value indirectly
struct Content {
    var name: String
    let fileExtension: String
    
    // A computed property to generate a filename.
    var filename: String {
        return name + "." + fileExtension
    }
}

let content = Content(name: "swiftlee-banner", fileExtension: "png")
print(content.filename)


// Ex: Read-Write Computed Properties
struct ContentViewModel {
    private var content: Content
    
    init(_ content: Content) {
        self.content = content
    }
    
    var name: String {
        get {
            content.name
        }
        set {
            content.name = newValue
        }
    }
}

var content1 = Content(name: "swiftlee-banner", fileExtension: "png")
var viewModel = ContentViewModel(content1)
viewModel.name = "SwiftLee Post"
print(viewModel.name)



//Ex:- function outside of class
class Score{
    var current: Int = 0
}
func increment(_ score:Int, val: Int = 1)-> Int {
    score + val
}
var myScore = Score()
myScore.current = increment(myScore.current)
print(myScore.current)
myScore.current = increment(myScore.current, val: 5)
print(myScore.current)


//Ex:- function Inside of class
class Score1{
    var current: Int = 0
    func increment(val: Int = 1) {
        current += val
    }
}
var myScore1 = Score1()
myScore1.increment()
print(myScore1.current)
myScore1.increment(val: 5)
print(myScore1.current)

//Ex:- function Inside of Struct
// An instance method in a struct cannot modify a store property unless the function is marked as mutating
// Property of value type cannot be modify by it's instance method by default

struct Score2 {
    var current: Int = 0
    mutating func increment(_ val: Int = 1) {
        current += val
    }
}
var myScore2 = Score2()
myScore2.increment()
print(myScore2.current)
myScore2.increment(5)
print(myScore2.current)


//Ex:- Restricting Access
// Private(Set) Prevent the modification of a store property from outside of the class or struct
// to make current property as read out side class me use (set) so that it can be asscess outside call for reading purpose only
struct Score3 {
    private(set) var current: Int = 0
    mutating func increment(_ val: Int = 1) {
        current += val
    }
}
var myScore3 = Score3()
myScore3.increment()
print(myScore3.current)
myScore3.increment(5)
print(myScore3.current)

// Static Properties and Methods
// Static properties has ablility to update a property that applies to all instance
class Score4 {
    private(set) var current: Int = 0
    static var highestScore: Int  = 0
    func increment(_ val: Int = 1) {
        current += val
        if current > Score4.highestScore {
            Score4.highestScore = current
        }
    }
}

var myScore4 = Score4()
var myScore5 = Score4()
myScore4.increment(10)
print(Score4.highestScore)
myScore5.increment(6)
print(Score4.highestScore)
myScore5.increment(6)
print(Score4.highestScore)

