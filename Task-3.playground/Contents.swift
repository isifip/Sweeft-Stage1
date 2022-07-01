import Cocoa

// MARK: --> დავალება 3
// მოცემულობა: მოცემულია მასივი, რომელიც შედგება მთელი რიცხვებისგან. დაწერეთ ფუნქცია რომელსაც გადაეცემა ეს მასივი და აბრუნებს მინიმალურ მთელ რიცხვს, რომელიც 0-ზე მეტია და ამ მასივში არ შედის.

func solution(_ array: [Int]) -> Int {
    guard let max = array.max(), max > 0 else { return 1 }
    let count = array.count
    
    var temp = Array(repeating: 0, count: max + 1)
    
    for j in (0..<count) {
        let value = array[j]
        if value > 0 {
            temp[value] = -1
        }
    }
    
    for i in (1..<max) {
        if temp[i] == 0 {
            return i
        }
    }
    return max + 1
}

var input = [1, 3, 6, 4, 1, 2]
let output = solution(input)
print(output)
