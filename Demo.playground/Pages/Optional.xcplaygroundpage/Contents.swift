//: [Previous](@previous)

import Foundation

// Optional is enum it has 2 value none and some, we can write extension
var optionalNumber : Int?

// Ex:1 IF LET Optional Binding
if let number = optionalNumber {
    print("IT has value", number);
} else{
    print("IT has nill value");
}

if var number1 = optionalNumber {
    print("IT has var value", number1);
} else{
    print("IT has var  nill value");
}

// Ex:2 GUARD
var numberIsThere : Int?

numberIsThere = 10
func square(number: Int?){
    guard let tempNumber = number else {
        print("IT has nill value");
        return
    }
    print("IT's square is",tempNumber * tempNumber);
}

square(number: numberIsThere)

// Ex:3 Force Unwrapping
//let forceUnWarpped = optionalNumber!
//print("IT has nill value", forceUnWarpped);


// Ex:4 Optional Chaining
struct Device {
    var type: String
    var price: Float
    var color: String
}
var myPhone: Device?
myPhone = Device(type: "IPhone", price: 600, color: "Yellow")

let devicePrice = myPhone?.price

if let tempDeivcePrice = devicePrice{
    print("My total Price = \(tempDeivcePrice + 8.99)")
}

// Ex:5 Nill coalescing value
var name : String?
//name = "Swati"
//name = nil
print("name: \(name ?? "Pranav")")


