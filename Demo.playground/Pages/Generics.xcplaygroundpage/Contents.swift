
// Generic Function example
let intArray = [1,2,3,4,5,6,7,10];
let abcArray = ["a","b","c","d","e","f"]

func findLetter(_ array:[String], letter:String) -> Int? {
    for (index,char) in array.enumerated() {
        if char == letter {
            return index
        }
    }
    return nil
}

print("Result with out Generic: \(findLetter(abcArray,letter:"d"))");

func linerSearch<T:Comparable>(_ array:[T], key:T) -> Int?{
    for (index,char) in array.enumerated() {
        if char == key {
            return index
        }
    }
    return nil
}
print("Result with Generic: \(linerSearch(intArray,key:10)!)");


//********************************************************
// Exp:1 Simple Generic Struct:
struct Container<Value> {
    var value: Value
}

let stringContainer = Container(value: "Message")
let intContainer = Container(value: 7)

print("String Container \(stringContainer)")
print("Int Container \(intContainer)")

// Exp:2
struct TOS<T> {
   var items = [T]()
   mutating func push(item: T) {
      items.append(item)
   }
   mutating func pop() -> T {
      return items.removeLast()
   }
}

var tos = TOS<String>()
tos.push(item: "Swift 4")
print(tos.items)

tos.push(item: "Generics")
print(tos.items)

tos.push(item: "Type Parameters")
print(tos.items)

tos.push(item: "Naming Type Parameters")
print(tos.items)

let deletetos = tos.pop()
print(deletetos)


//********************************************************
// Exp: Extending generic type

extension TOS {
    var lastElement: T? {
        items.last
    }
}

print("Last Element \(tos.lastElement ?? "Pranav")")


//********************************************************
// Exp: AssociatedType and Protocal with Struct

protocol Stack {
    associatedtype Element
    var count : Int {get}
    mutating func push(_ item:Element)
    mutating func pop() -> Element?
}

struct IntStack: Stack{
    typealias Element = Int
    private var values: [Int] = []
    
    var count:Int{
        values.count
    }
    
    mutating func push(_ item: Int){
        values.append(item)
    }
    
    mutating func pop() -> Int? {
        values.removeLast()
    }
}

var stack1 = IntStack()
stack1.push(1)
stack1.push(2)
print(stack1)

//********************************************************
// Exp: Make Type Generic

struct GenericStack<Element>:Stack {
    typealias Element = Element
    private var values: [Element] = []
    
    var count:Int{
        values.count
    }
    
    mutating func push(_ item: Element){
        values.append(item)
    }
    
    mutating func pop() -> Element? {
        values.removeLast()
    }
}

var stackG1 = GenericStack<String>()
stackG1.push("Hi")
stackG1.push("Pranav")
print(stackG1)

var stackG2 = GenericStack<Int>()
stackG2.push(1)
stackG2.push(2)
print(stackG2)


