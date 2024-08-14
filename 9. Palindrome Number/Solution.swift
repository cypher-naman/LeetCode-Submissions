class Solution {
    func isPalindrome(_ x: Int) -> Bool {
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