class Solution {
    func isPalindrome(_ s: String) -> Bool {
    let string: String = s.lowercased()
    let charSet = Set("abcdefghijklmnopqrstuvwxyz")
    let numberSet = Set(0...9)
    //let charSet = Set((97...122).map { Character(UnicodeScalar($0)!)})
    var newString = string.filter({(charSet.contains($0) || numberSet.contains($0.wholeNumberValue ?? -1))})
    
    if newString == "" || newString.count == 1 {
            return true
    }
  
    // using this as causing time exceed in submission
    return newString == String(newString.reversed())
//
//    for i in stride(from: 0, to: loopEnd, by: 1) {
//        if let index1 = newString.index(newString.startIndex,
//                                        offsetBy: i,
//                                        limitedBy: newString.endIndex),
//           let index2 = newString.index(newString.startIndex,
//                                        offsetBy: ((newString.count-1) - i),
//                                        limitedBy: newString.endIndex) {
//            
//            if newString[index1] != newString[index2] {
//                return false
//            }
//        }
//    }
//    return true
}
}