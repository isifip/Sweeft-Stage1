import Cocoa

// MARK: --> დავალება 1
// მოცემულობა : დაწერეთ ფუნქცია, რომელსაც გადაეცემა ტექსტი  და აბრუნებს პალინდრომია თუ არა. (პალინდრომი არის ტექსტი რომელიც ერთნაირად იკითხება ორივე მხრიდან).

func isPalindrome(word: String) -> Bool {
    let reverseString = String(word.reversed())
    if(word != "" && word == reverseString) {
        return true
    } else {
        return false
    }
}

// სატესტო ქეისი
print(isPalindrome(word: "hello"))
print(isPalindrome(word: "noon"))
