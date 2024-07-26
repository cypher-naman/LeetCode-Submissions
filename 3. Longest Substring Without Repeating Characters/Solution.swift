class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var dict: [Character: Int] = [:]
        var maxCount = 0
        var left = 0
        for (right, char) in s.enumerated() {
            if let index = dict[char], index >= left {
                left = index+1
            }
            maxCount = max(maxCount, (right-left+1))
            dict[char] = right
        }
        
        return maxCount
    }
}