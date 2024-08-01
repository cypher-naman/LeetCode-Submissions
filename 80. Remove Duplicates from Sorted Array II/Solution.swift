class Solution {
func removeDuplicates(_ nums: inout [Int]) -> Int {
    var frequencyDict: [Int: Int] = [:]
    var countOfNewArray = 0
    var removedCount = 0
    for (index,values) in nums.enumerated() {
        // print(values, frequencyDict[values])
        if let count = frequencyDict[values] {
            if count < 3 {
                frequencyDict[values, default: 1] += 1
                countOfNewArray += 1
            } else {
                nums.remove(at: (index-removedCount))
                removedCount += 1
            }
        } else {
            frequencyDict[values, default: 1] += 1
            countOfNewArray += 1
        }
    }
    return countOfNewArray
}
}