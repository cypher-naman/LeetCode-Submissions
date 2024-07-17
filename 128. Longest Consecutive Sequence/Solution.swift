class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
    let set1 = Set(nums).sorted()
    if nums.count == 0 {
        return 0
    }
    var highestCount = 1
    var previous = Int.min
    var currentHighest = 1
    for i in set1 {
        if (previous+1) == i {
            currentHighest += 1
            previous += 1
            if currentHighest > highestCount {
                highestCount = currentHighest
            }
        } else {
            previous = i
            currentHighest = 1
        }
    }
    return highestCount
}
}