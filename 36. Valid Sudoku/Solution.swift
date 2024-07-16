class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
    var localMatrix = [Int]()
    for i in 0..<9 {
        var rowArray = [Int]()
        var columnArray = [Int]()
        
        for j in 0..<9 {
            
            if let firstNo = board[i][j].wholeNumberValue {
                guard !rowArray.contains(firstNo)else {
                    return false
                }
                rowArray.append(firstNo)
                if (i + j < 3) {
                    localMatrix.append(firstNo)
                }
            }
            if let secondNo = board[j][i].wholeNumberValue {
                guard !columnArray.contains(secondNo) else {
                    return false
                }
                columnArray.append(secondNo)
            }
        }
    }
    
    var matrixArrays = [[Int]]()
    for i in stride(from: 0, to: 9, by: 3) {
        for j in stride(from: 0, to: 9, by: 3) {
            var rowMatrix = [Int]()
            if let no = board[i][j].wholeNumberValue {
                rowMatrix.append(no)
            }
            if let no = board[i][j+1].wholeNumberValue {
                rowMatrix.append(no)
            }
            if let no = board[i][j+2].wholeNumberValue {
                rowMatrix.append(no)
            }
            if let no = board[i+1][j].wholeNumberValue {
                rowMatrix.append(no)
            }
            if let no = board[i+1][j+1].wholeNumberValue {
                rowMatrix.append(no)
            }
            if let no = board[i+1][j+2].wholeNumberValue {
                rowMatrix.append(no)
            }
            if let no = board[i+2][j].wholeNumberValue {
                rowMatrix.append(no)
            }
            if let no = board[i+2][j+1].wholeNumberValue {
                rowMatrix.append(no)
            }
            if let no = board[i+2][j+2].wholeNumberValue {
                rowMatrix.append(no)
            }
            matrixArrays.append(rowMatrix)
        }
        
    }
    var isValid = true
    matrixArrays.forEach { smallMatrix in
        if Set(smallMatrix).count != smallMatrix.count {
            isValid =  false
        }
    }
    return isValid
}
}