class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        var a1 = nums1
        var a2 = nums2
        var combinedIntArray = [Int]()
        let limit: Int = (nums1.count + nums2.count)/2
        
        while (a1.count > 0 && a2.count > 0) {
            if combinedIntArray.count > limit {
                break
            }
            if let firstValue = a1.first,
            let secondValue = a2.first {
                if firstValue < secondValue {
                    combinedIntArray.append(firstValue)
                    a1.removeFirst()
                } else {
                    combinedIntArray.append(secondValue)
                    a2.removeFirst()
                }
            }
        }
        if a1.count > 0 {
            combinedIntArray.append(contentsOf: a1)
        } else {
            combinedIntArray.append(contentsOf: a2)
        }

        var isEven = (nums1.count + nums2.count) % 2 == 0
        
        if isEven {
            var num1: Int = combinedIntArray[limit]
            var num2: Int = combinedIntArray[limit-1]
            var mean: Double = (Double(num1) + Double(num2)) / 2.0
            return mean
        } else {
            var num1 = combinedIntArray[limit]
            return Double(num1)
        }
    }
}