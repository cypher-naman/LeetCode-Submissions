class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var didBuy = false
        var min = prices.first ?? 0
        var max = 0
        var answerArray = [Int]()
        for i in stride(from: 0, to: prices.count, by: 1) {
            if ((prices[i] >= max)  && didBuy && (prices[i] > min)) {
                if prices[i] > max {
                    max = prices[i]
                }
                
                let difference = max - min
                answerArray.append(difference)
                max = 0
            }
            if prices[i] <= min {
                min = prices[i]
                didBuy = true
            }

    //        print("value \(prices[i]) did buy \(didBuy) ")
        }
        let sortedTrades = answerArray.sorted(by: { $0 > $1 })
    //    print("sortedTrades = \(sortedTrades) max = \(max) min = \(min) didBuy \(didBuy)")
        return sortedTrades.first ?? 0
    }
}