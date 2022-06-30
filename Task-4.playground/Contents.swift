import Cocoa

//MARK: -->  დავალება 4
// მოცემულობა: მოცემულია String რომელიც შედგება „(„ და „)“ ელემენტებისგან. დაწერეთ ფუნქცია რომელიც აბრუნებს ფრჩხილები არის თუ არა მათემატიკურად სწორად დასმული.

func checkParentheses(_ string: String) -> Bool {
    let pair: [Character: Character] = ["(": ")"]
    var stack: [Character] = []
    for char in string {
        if let match = pair[char] {
            stack.append(match)
        } else if stack.last == char {
            stack.popLast()
        } else {
            return false
        }
    }
    return stack.isEmpty
}

print(checkParentheses("()"))
print(checkParentheses("(()("))
