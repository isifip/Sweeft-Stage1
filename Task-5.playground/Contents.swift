import Cocoa

// MARK: --> დავალება 5
// მოცემულობა: გვაქვს n სართულიანი კიბე, ერთ მოქმედებაში შეგვიძლია ავიდეთ 1 ან 2 საფეხურით. დაწერეთ ფუნქცია რომელიც დაითვლის n სართულზე ასვლის ვარიანტების რაოდენობას.


func climbStairs(_ step: Int) -> Int {
    if step < 0 {
        return 0
    }
    if step == 0 || step == 1 {
        return 1
    }
    
    var previous = 0
    var post = 1
    var total = 0
    
    for _ in 1...step {
        total = previous + post
        previous = post
        post = total
    }
    return total
}

climbStairs(5)
climbStairs(4)
