class Solution {
    func isPalindrome(_ x: Int) -> Bool {
    //    -231 <= x <= 231 - 1
        if x < 0 {
            return false
        } else if x == 0 {
            return true
        }
        
        var number = x
        var reversed = 0
        while number > 0 {
            let lastDigit = number % 10
            reversed = (reversed * 10) + lastDigit
            number = number / 10
        }
        
        if reversed == x {
            return true
        } else {
            return false
        }
    }
}