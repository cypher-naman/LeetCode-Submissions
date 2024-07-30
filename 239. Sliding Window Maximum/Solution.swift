class Solution {
func maxSlidingWindow(_ nums: [Int], _ k: Int) -> [Int] {
    var deque = [Int]() // Store indices
    var result = [Int]()

    for j in 0..<nums.count {
        // Remove indices of elements not in the current window
        if !deque.isEmpty && deque.first! < j - k + 1 {
            deque.removeFirst()
        }

        // Remove indices of elements that are smaller than the current element
        while !deque.isEmpty && nums[deque.last!] < nums[j] {
            deque.removeLast()
        }

        // Add current element's index to the deque
        deque.append(j)

        // The first element of deque is the largest element for the current window
        if j >= k - 1 {
            result.append(nums[deque.first!])
        }
    }

    return result
}
}