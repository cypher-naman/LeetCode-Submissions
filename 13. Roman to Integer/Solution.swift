class Solution {
    func romanToInt(_ s: String) -> Int {
        var number = 0
        var i = 0
        while (i < s.count) {
            if let index = s.index(s.startIndex, offsetBy: i, limitedBy: s.endIndex) {
                if (i+1 < s.count), let next = s.index(s.startIndex, offsetBy: i+1, limitedBy: s.endIndex) {
                    // first condition
    //                print(s[index])
    //                print(s[next])
    //                print("\n")
                    if ((s[index] == "I" && s[next] == "V") || (s[index] == "I" && s[next] == "X")) {
                        if s[next] == "V" {
                            number += 4
                            i+=2
                            continue
                        } else if s[next] == "X" {
                            number += 9
                            i+=2
                            continue
                        }
                    } else if ((s[index] == "X" && s[next] == "L") || (s[index] == "X" && s[next] == "C")) {
                        if s[next] == "L" {
                            number += 40
                            i+=2
                            continue
                        } else if s[next] == "C" {
                            number += 90
                            i+=2
                            continue
                        }
                    } else if ((s[index] == "C" && s[next] == "D") || (s[index] == "C" && s[next] == "M")) {
                        if s[next] == "D" {
                            number += 400
                            i+=2
                            continue
                        } else if s[next] == "M" {
                            number += 900
                            i+=2
                            continue
                        }
                    } else {
                        if s[index] == "I" {
                            number += 1
                        } else if s[index] == "V" {
                            number += 5
                        } else if s[index] == "X" {
                            number += 10
                        } else if s[index] == "L" {
                            number += 50
                        } else if s[index] == "C" {
                            number += 100
                        } else if s[index] == "D" {
                            number += 500
                        } else if s[index] == "M" {
                            number += 1000
                        }
                        i+=1
                        continue
                    }
                } else {
    //                print("Last \(s[index])")
                    // last roman char
                    if s[index] == "I" {
                        number += 1
                    } else if s[index] == "V" {
                        number += 5
                    } else if s[index] == "X" {
                        number += 10
                    } else if s[index] == "L" {
                        number += 50
                    } else if s[index] == "C" {
                        number += 100
                    } else if s[index] == "D" {
                        number += 500
                    } else if s[index] == "M" {
                        number += 1000
                    }
                    i+=1
                    continue
                }
            }
        }
        return number
    }
}