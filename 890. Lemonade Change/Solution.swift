class Solution {
    func lemonadeChange(_ bills: [Int]) -> Bool {
        var fiveBillCount = 0
        var tenBillCount = 0
        
        for bill in bills {
            if bill == 20 {
                if (fiveBillCount > 0 && tenBillCount > 0) {
                    fiveBillCount -= 1
                    tenBillCount -= 1
                } else if (fiveBillCount > 2) {
                    fiveBillCount -= 3
                } else {
                    return false
                }
            } else if bill == 10 {
                if fiveBillCount > 0 {
                    fiveBillCount -= 1
                    tenBillCount += 1
                } else {
                    return false
                }
            } else if bill == 5 {
                fiveBillCount += 1
            }
        }
        return true
    }
}