class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
            var op = [[String]]()
    var anagramDic: [String: [String]] = [:]
    for i in stride(from: 0, to: strs.count, by: 1) {
        let anagagramInSortedOrder: String = String(strs[i].sorted())
        anagramDic[anagagramInSortedOrder, default: []] += [strs[i]]
    }
    anagramDic.forEach { (key: String, value: [String]) in
        op.append(value)
    }
    return op
    }
}