class Solution {
    func addBinary(_ a: String, _ b: String) -> String {
        let first = Array(a)
        let second = Array(b)
        var result = [Character]()
        var carry = 0
        
        var i = first.count - 1
        var j = second.count - 1
        
        // Loop while there are still digits to process or a carry remains
        while i >= 0 || j >= 0 || carry > 0 {
            var sum = carry
            
            if i >= 0 {
                sum += first[i] == "1" ? 1 : 0
                i -= 1
            }
            
            if j >= 0 {
                sum += second[j] == "1" ? 1 : 0
                j -= 1
            }
            
            // Append the resulting bit (0 or 1) to the result
            result.append(sum % 2 == 0 ? "0" : "1")
            
            // Calculate the new carry (1 if sum is 2 or more, 0 otherwise)
            carry = sum / 2
        }
        
        // The result is currently reversed, so we reverse it back
        return String(result.reversed())
    }
}
