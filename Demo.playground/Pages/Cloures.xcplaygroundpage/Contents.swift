
import Foundation
/* Syntax:
    {
        (parameter) -> return Type in
         Statement
    }
 */


// *********************** Closure take no parameter and return nothing ***********************
// Ex:1 Closure take no parameter and return nothing
let sayHello = {
    print("Parnav")
}
sayHello()

// Aonther way
let sayHello1:()-> Void = {
    print("Pranav")
}
sayHello1()

// Aonther way
let sayHello2:()-> () = {
    print("Pranav")
}
sayHello2()

// *********************** Closure with one parameter ***********************
// Ex:2 Closure with one parameter
let value2 = { (value: String) in
    print("Value is \(value)")
}
print(value2("Pranav"))

// Another Way
let value1: (Int) -> () = { (value) in
    print("Value is \(value)")
}
print(value1(10))

// *********************** Closure take one parameter and return 1 parameter ***********************
// Ex:3 Closure take one parameter and return 1 parameter
let value: (Int) -> Int = { (value1) in
    return value1
}
print(value(10))

// Another Way
let value21 = { (value1: Int) in
    return value1
}
print(value21(10))


// *********************** Closure take two parameter and return 1 parameter ***********************
//  Ex:4 Closure take two parameter and return 1 parameter
let add: (Int, Int) -> Int = { (value1, value2) in
    return value1 + value2
}
print(add(10,10))
// Another Way
let add1 = { (value1:Int, value2:Int) in
    return value1 + value2
}
print(add1(10,10))

// *********************** Closure with functions ***********************
//Ex:4 Closure with functions
func sayHello(to name:String, finallyString:(String) ->()){
    let newName = name.capitalized
    finallyString(newName)
}

// Option 1
sayHello(to: "Pranav", finallyString: { name in
    print("Hello \(name)")
})

// Option 2: Trailing Closure
sayHello(to: "Swati"){ name in
    print("Hello \(name)")
}

// Option 3:
let tempName: (String) ->()  = { name in
    print("Hello \(name)")
}
sayHello(to: "Avisha", finallyString: tempName)

// *********************** Return Closure ***********************
// Return Closure
func sayIt() -> (String) -> Void {
    return{ name in
        print("Hello \(name)")
    }
}
sayIt()("Arun")
// Or
let greeting = sayIt()
greeting("Arun")


// *********************** Capturing Value ***********************
// Capturing Value

func counter() -> () -> Void{
    var count = 1;
    return {
        print("Count is \(count)")
        count += 1
    }
}

let gameCounter = counter()
gameCounter()
gameCounter()
