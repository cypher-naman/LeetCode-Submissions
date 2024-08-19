class Solution {
    func canBeEqual(_ target: [Int], _ arr: [Int]) -> Bool {
        var targetDict: [Int: Int] = [:]
        var arrDict = targetDict
        for i in stride(from: 0, to: arr.count, by: 1) {
            targetDict[target[i], default: 0] += 1
            arrDict[arr[i], default: 0] += 1
        }
        return arrDict == targetDict
    }
}