class Solution {
    func reverse(_ x: Int) -> Int {
        var number = x
        var multiply = 1
        
        let startingRange: Int = Int(pow(-2.0,31.0))
        print(startingRange)
        let endingRange: Int = Int(pow(2.0,31.0)-1.0)
        print(endingRange)
        if number < 0 {
            multiply * -1
        } 
        var reversed = 0 
        while number != 0 {
            var lastDigit = number % 10 
            number = number / 10
            reversed = reversed * 10 + lastDigit
        }
        let answer = reversed * multiply
        if answer >= startingRange && answer <= endingRange {
            return answer
        } else {
            return 0
        }
    }
}