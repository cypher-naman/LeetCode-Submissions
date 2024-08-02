class Solution {
    func evalRPN(_ tokens: [String]) -> Int {
        var intStack = [Int]()
        for char in tokens {
            if let number = Int(char) {
                intStack.append(number)
            } else {
                if char == "+" {
                    if let last = intStack.popLast(),
                    let secondLast = intStack.popLast() {
                        let result = last + secondLast
                        intStack.append(result)
                    }
                } else if char == "-" {
                    if let last = intStack.popLast(),
                    let secondLast = intStack.popLast() {
                        let result = secondLast - last
                        intStack.append(result)
                    }
                }  else if char == "*" {
                    if let last = intStack.popLast(),
                    let secondLast = intStack.popLast() {
                        let result = last * secondLast
                        intStack.append(result)
                    }
                }  else if char == "/" {
                    if let last = intStack.popLast(),
                    let secondLast = intStack.popLast() {
                        let result: Int =  secondLast / last
                        intStack.append(result)
                    }
                }
            }
        }
        return intStack.first!
    }
}