class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
            var preFixArray = [Int](repeatElement(1, count: nums.count))
    var suffixArray = [Int](repeatElement(1, count: nums.count))
    var preFixProduct = 1
    var suffixProduct = 1
    for i in stride(from: 0, to: nums.count, by: 1) {
        preFixProduct *= nums[i]
        suffixProduct *= nums[nums.count-i-1]
        preFixArray[i] = preFixProduct
        suffixArray[nums.count-i-1] = suffixProduct
    }
    var newpreFixArray: [Int] = [1]
    newpreFixArray.append(contentsOf: preFixArray)
    print(newpreFixArray)
    suffixArray.append(1)
    print(suffixArray)
    var returnArray: [Int] = []
    for i in stride(from: 0, to: nums.count, by: 1) {
        returnArray.append(newpreFixArray[i] * suffixArray[i+1])
    }
    return returnArray
    }
}