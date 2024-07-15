class Solution {
    func checkValid(_ matrix: [[Int]]) -> Bool {
    var set1 = Set<Int>()
    var set2 = Set<Int>()
    var flippedArray = [[Int]]()
    var set3 = Set<Int>()
    
    if let size: Int = matrix.first?.count {
        if size != matrix.count {
            return false
        }
        for i in stride(from: 1, to: size+1, by: 1) {
            set1.insert(i)
        }
        var isValid = true
        var appendArray = Array(repeating: Array(repeating: 0, count: size), count: size)
        for (index1,value1) in matrix.enumerated() {
            for (index2,value2) in value1.enumerated() {
                set2.insert(value2)
                appendArray[index2][index1] = value2
            }
            if set1 != set2 {
                isValid = false
            } else {
                set2 = Set<Int>()
            }
        }
        print(appendArray)
        for (index1,value1) in appendArray.enumerated() {
            for (index2,value2) in value1.enumerated() {
                print(value2)
                set3.insert(value2)
            }
            if set1 != set3 {
                isValid = false
            } else {
                set3 = Set<Int>()
            }
        }
        return isValid
    } else {
        return false
    }
}
}