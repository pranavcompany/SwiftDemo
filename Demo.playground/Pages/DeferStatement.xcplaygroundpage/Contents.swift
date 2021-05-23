//: [Previous](@previous)

import Foundation

func f() {
    defer { print("First defer") }
    defer { print("Second defer") }
    defer { print("Third defer") }
    print("End of function")
}
f()


func f1() {
    print("First Statment")
    defer { print("first defer") }
    print("End of function f1")
}
f1()
