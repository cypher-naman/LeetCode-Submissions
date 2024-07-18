class Solution {
    func isPalindrome(_ s: String) -> Bool {
    var newString = Array(s.lowercased().filter { $0.isLetter || $0.isNumber })
    
    if newString.isEmpty || newString.count == 1 {
        return true
    }
    return newString == newString.reversed()
    }
}