//: [Previous](@previous)

import Foundation

// Ex1: Designated initializers
class Person {
    var name:String
    
    init(name:String) {
        self.name = name
    }
}

class Employee:Person {
    var employeeId:String
    
    init(name:String, id:String) {
        employeeId = id
        super.init(name: name)
    }
}

var emp1 = Employee(name:"Pranav",id:"74")
print(emp1.employeeId)


// Ex2: Convenience initializers
class Employee1:Person {
    var employeeId:String
    var profile:String
    
    init(name:String, id:String, profile:String) {
        self.employeeId = id
        self.profile = profile
        super.init(name: name)
    }
    
    convenience init(name:String, id:String){
        self.init(name:name, id:id, profile:"Engineering")
    }
}

var emp2 = Employee1(name:"Pranav",id:"74")
print(emp2.profile)

// Ex3: Requried initializers

class Person1 {
    var name:String
    
    required init(name:String) {
        self.name = name
    }
    
}

class Employee2:Person1 {
    var employeeId:String
    
    required init(name:String) {
        fatalError("It must be override")
    }
    
    init(name:String, id:String) {
        self.employeeId = id
        super.init(name: name)
    }
}

var emp3 = Employee2(name:"Pranav",id:"74")
print(emp3.name)


// Ex3: Override initializers

class Person2 {
    var name:String
    
    init(name:String) {
        self.name = name
    }
    
}

class Employee3:Person2 {
    var employeeId:String
    
    init(name:String, id:String) {
        self.employeeId = id
        super.init(name: name)
    }
    
   override init(name:String) {
       self.employeeId = "74"
       super.init(name:name)
   }
}

var emp4 = Employee3(name:"Pranav",id:"74")
print("\(emp4.name) \(emp4.employeeId)")


