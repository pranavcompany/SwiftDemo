import Foundation

var coins = [1,5,3,6,4,7,8,4]

// Ex: forEach
coins.forEach({coins in
     print(coins)
})

// Ex: *********************** Map ***********************
print(" *********************** Map ***********************")
let coinsString = coins.map({"\($0)"})
let coinsString2 = coins.map{(coin) -> String in "\(coin)"}
print("String Coins\(coinsString)")
print("String Coins2\(coinsString2)")

var info = [String: String]()
info["name"] = "andrew"
info["city"] = "berlin"
info["job"] = "developer"
info["hobby"] = "computer games"

let keys = info.map { $0.key }
let values = info.map { $0.value }
print("Key \(keys)")
print("values \(values)")
let result1 = info.map { $0 }
print(result1)

// Ex: *********************** Compact Map ***********************
print(" *********************** Compact Map ***********************")
var coinsTmp = ["1","5","$","6"]
let newCompactMap = coinsTmp.compactMap{coin in Int(coin)}
print("Compact Map Coins\(newCompactMap)")

// Ex: *********************** Flat Map ***********************
var coinsTmp2 = [["1","5"],["$","6"]]
let newflatMap = coinsTmp.flatMap{(coin) in coin}
print("Flat Map Coins \(newflatMap)")

// Ex:*********************** filter Map ***********************
let filterArray = coins.filter{(coin) in  coin > 6}
let filterArray1 = coins.filter{$0 > 5}
print("filter Array\(filterArray)");
print("filter Array\(filterArray1)");

// Ex: *********************** reducer Map ***********************
let reducerValue = coins.reduce(0, {$0 + $1})
print("FinalValue \(reducerValue)")
let reducerValue1 = coins.reduce(0) {(result,coin) -> Int in result + coin}
print("FinalValue1 \(reducerValue1)")

let friendsAndMoney = ["Alex": 150.00, "Tim": 62.50, "Alice": 79.80, "Jane": 102.00, "Bob": 94.20]
let allMoney = friendsAndMoney.reduce(0, { $0 + $1.value })
print("allMoney \(allMoney)")

// Ex: *********************** sort and Sorted Array ***********************
let newSortedArray = coins.sorted{(a,b) -> Bool in a > b}
print("new sortedArray \(newSortedArray)")

let newSortedArray1 = coins.sorted{$0 < $1}
print("new sortedArray2 \(newSortedArray1)")

coins.sort{(a,b) -> Bool in a > b}
print("new sort Array \(coins)")

coins.sort{$0 < $1}
print("new sort Array2 \(coins)")


// Ex: *********************** Split ***********************
print(" *********************** Split ***********************")
let message = "Hello World!"

let result = message.split { (char) -> Bool in
    return char == " "
}
print("Split \(result)")

