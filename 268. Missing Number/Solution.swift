class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
    var numbers: [Int] = Array(0...nums.count)

    for number in nums {
        numbers.removeAll(where: {$0 == number})
    }
    return numbers.first!
    }
}