// Problem: https://leetcode.com/problems/reformat-phone-number/

class Solution {
    func reformatNumber(_ number: String) -> String {
        var temp = String(number.filter { !" -".contains($0) }.reversed()), output = ""
        while temp.count >= 2 {
            if output.isEmpty == false {
                output.append("-")
            }
            if temp.count > 4 {
                for _ in 0 ..< 3 {
                    output.append(temp.popLast()!)
                }
            } else if temp.count == 4 {
                for idx in 0 ..< 4 {
                    if idx == 2 {
                        output.append("-")
                    }
                    output.append(temp.popLast()!)
                }
            } else if temp.count == 3 {
                for _ in 0 ..< 3 {
                    output.append(temp.popLast()!)
                }
            } else {
                for _ in 0 ..< 2 {
                    output.append(temp.popLast()!)
                }
            }
        }
        return output
    }
}
