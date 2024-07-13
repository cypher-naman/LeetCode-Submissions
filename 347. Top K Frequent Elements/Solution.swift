class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var freqDict: [Int: Int] = [:]
        for values in nums {
            freqDict[values, default: 0] += 1
         }
        let sortByFreq: [Int] = freqDict.sorted { $0.value > $1.value }.map { $0.key }
        var returnDict: [Int] = []
        for i in stride(from: 0, to: k, by: 1) {
            returnDict.append(sortByFreq[i])
        }
        return returnDict
    }
}