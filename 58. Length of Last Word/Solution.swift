class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        let charArray = Array(s.reversed())
        var lastWord = [Character]()
        for char in charArray {
            if char == " " && !lastWord.isEmpty {
                break;
            } 
            if char != " " {
                lastWord.append(char)
            }
        }
        return lastWord.count
    }
}