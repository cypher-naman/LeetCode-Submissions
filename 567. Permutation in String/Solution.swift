class Solution {
func checkInclusion(_ s1: String, _ s2: String) -> Bool {
    let len1 = s1.count
    let len2 = s2.count
    if len1 > len2 {
        return false
    }
    
    var s1Count = [Int](repeating: 0, count: 26)
    var s2Count = [Int](repeating: 0, count: 26)
    
    let aAscii = Character("a").asciiValue!
    
    // Populate the counts for the first window
    for i in 0..<len1 {
        s1Count[Int(s1[s1.index(s1.startIndex, offsetBy: i)].asciiValue! - aAscii)] += 1
        s2Count[Int(s2[s2.index(s2.startIndex, offsetBy: i)].asciiValue! - aAscii)] += 1
    }
    
    var matches = 0
    for i in 0..<26 {
        if s1Count[i] == s2Count[i] {
            matches += 1
        }
    }
    
    // Slide the window over s2
    for i in 0..<(len2 - len1) {
        if matches == 26 {
            return true
        }
        
        let index1 = Int(s2[s2.index(s2.startIndex, offsetBy: i)].asciiValue! - aAscii)
        let index2 = Int(s2[s2.index(s2.startIndex, offsetBy: i + len1)].asciiValue! - aAscii)
        
        s2Count[index2] += 1
        if s2Count[index2] == s1Count[index2] {
            matches += 1
        } else if s2Count[index2] == s1Count[index2] + 1 {
            matches -= 1
        }
        
        s2Count[index1] -= 1
        if s2Count[index1] == s1Count[index1] {
            matches += 1
        } else if s2Count[index1] == s1Count[index1] - 1 {
            matches -= 1
        }
    }
    
    return matches == 26
}
}