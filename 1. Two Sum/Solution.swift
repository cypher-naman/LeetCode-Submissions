class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    for (i, number1) in nums.enumerated() {
        for j in i+1..<nums.count {
            if number1 + nums[j] == target {
                return [i,j]
            }
        }
    }
    return []
    }
}