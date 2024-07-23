class Solution {
func isValid(_ s: String) -> Bool {
    var stack = [Character]()
    
    let matchingPairs: [Character: Character] = [")": "(", "]": "[", "}": "{"]
    
    for char in s {
        if matchingPairs.values.contains(char) {
            stack.append(char)
        } else if let match = matchingPairs[char], !stack.isEmpty, stack.last == match {
            stack.removeLast()
        } else {
            return false
        }
    }
    
    return stack.isEmpty
}
}