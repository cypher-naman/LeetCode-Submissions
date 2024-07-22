class Solution {
    func sortPeople(_ names: [String], _ heights: [Int]) -> [String] {
        var nameHeightDict: [Int: String] = [:]
        for i in stride(from: 0, to: names.count, by: 1) {
            nameHeightDict[heights[i]] = names[i]
        }
        let sortedNameHeight = nameHeightDict.sorted(by: { $0.key > $1.key })
        var sortedNames = [String]()
        for dictValue in sortedNameHeight {
            sortedNames.append(dictValue.value)
        }
        
        return sortedNames
    }
}