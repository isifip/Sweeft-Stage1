import Cocoa

// MARK: --> დავალება 6
// მოცემულობა: დაწერეთ საკუთარი მონაცემთა სტრუქტურა, რომელიც საშუალებას მოგვცემს O(1) დროში წავშალოთ ელემენტი.

var randomDictionary: [String: Int] = [:]
randomDictionary = [
    "random1" : 1,
    "random2" : 2,
    "random3" : 3,
    "random4" : 4
]

func removeFromDictionary(key: String) {
    if let value = randomDictionary.removeValue(forKey: key) {
        print("The value \(value) was removed")
    } else {
        print("The \(key) key wasn't found")
    }
}

removeFromDictionary(key: "random1")
print(randomDictionary)





