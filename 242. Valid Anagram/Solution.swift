class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var sDict: [Character: Int] = [:]
            s.forEach { char in
            sDict[char, default: 0] += 1
        }
        var tDict: [Character: Int] = [:]
            t.forEach { char in
            tDict[char, default: 0] += 1
        }
        return sDict == tDict ? true: false
    }
}