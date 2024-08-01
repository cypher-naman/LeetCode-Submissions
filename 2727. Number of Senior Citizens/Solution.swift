class Solution {
    func countSeniors(_ details: [String]) -> Int {
        var validCount = 0
        
        for detail in details {
            if let startIndex = detail.index(detail.startIndex, offsetBy: 11, limitedBy: detail.endIndex),
            let endIndex = detail.index(detail.startIndex, offsetBy: detail.count-3, limitedBy: detail.endIndex){
                let age = detail[startIndex...endIndex]
                let ageAsString = String(age)
                let validIntAge = Int(ageAsString)!
                if validIntAge > 60 {
                    validCount += 1
                }
            }
            
        }
        return validCount
    }
}