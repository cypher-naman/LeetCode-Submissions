class Solution {
    func maxArea(_ height: [Int]) -> Int {
    if height.count == 1 || height.count == 0 {
        return 0
    }
    if height.count == 2 {
        return min(height[0], height[1])
    }
    var maxArea = 0
    var frontHalfMax = 0
    var frontHalfMaxInt = height.first ?? 0
    var frontHalfMaxIndex = 0
    var secondHalfMax = 0
    var secondHalfMaxInt = height.last ?? 0
    var secondHalfMaxIndex = height.count-1
    
    for i in stride(from: 0, to: (height.count+1)/2, by: 1) {
        if height[i] >= frontHalfMaxInt {
            if abs(frontHalfMaxIndex-i) * min(height[i], frontHalfMaxInt) > frontHalfMax {
                frontHalfMax = abs(frontHalfMaxIndex-i) * min(height[i], frontHalfMaxInt)
                frontHalfMaxInt = max(frontHalfMaxInt, height[i])
                if frontHalfMaxInt == height[i] {
                    frontHalfMaxIndex = i
                }
                if frontHalfMax > maxArea {
                    maxArea = frontHalfMax
                }
            }
        } else {
            continue
        }

        for j in stride(from: height.count-1, to: (height.count-1)/2, by: -1) {
            if abs(j-i) * min(height[i],height[j]) > maxArea {
                maxArea = abs(j-i) * min(height[i],height[j])
            }
            
            if height[j] >= secondHalfMaxInt {
                if abs(secondHalfMaxIndex-j) * min(height[j], secondHalfMaxInt) > secondHalfMax {
                    secondHalfMax = abs(secondHalfMaxIndex-j) * min(height[j], secondHalfMaxInt)
                    secondHalfMaxInt = max(secondHalfMaxInt, height[j])
                    if secondHalfMaxInt == height[j] {
                        secondHalfMaxIndex = j
                    }
                    if secondHalfMax > maxArea {
                        maxArea = secondHalfMax
                    }
                }
            } else {
                continue
            }

        }
    }
    return maxArea
}
}