class Solution {
func threeSum(_ nums: [Int]) -> [[Int]] {
    
    var matchingPairs: [Int: [[Int]]] = [:]
    
    for (i,value) in nums.enumerated() {
        let target = value * -1
        var reducableArray = nums
        reducableArray.remove(at: i)
        let pairs = twoSum(reducableArray, target)
        if  !pairs.isEmpty {
            matchingPairs[value] = pairs
        }
    }
    
    var finalArray: [[Int]] = []
    matchingPairs.forEach { (key: Int, value: [[Int]]) in
        var arrayWithSum = [[Int]]()
        value.forEach { array in
            var finalSet = array + [key]
            finalSet.sort()
            if !arrayWithSum.contains(where: {$0 == finalSet}) {
                arrayWithSum.append(finalSet)
            }
            
        }
        
        arrayWithSum.forEach { sortedArray in
            if !finalArray.contains(where: {$0 == sortedArray}) {
                finalArray.append(sortedArray)
            }
        }
    }
    return finalArray
}

func twoSum(_ array: [Int], _ target: Int) -> [[Int]] {
    var sumDict: [Int: Int] = [:]
    var returnArray:[[Int]] = []
    for value in array {
        let diff = target - value
        if let value = sumDict[diff] {
            if !returnArray.contains(where: { $0 == [value, diff] || $0 == [diff, value]}) {
                returnArray.append([value, diff])
            }
        }
        sumDict[value] = diff
    }
    return returnArray
}
}