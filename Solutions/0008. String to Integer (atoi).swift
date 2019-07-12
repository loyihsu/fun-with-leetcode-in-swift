//Problem: https://leetcode.com/problems/string-to-integer-atoi/

class Solution {
    func myAtoi(_ str: String) -> Int {
        let t = str
        var firstNonWhiteSpace = t.startIndex
        if !t.isEmpty {
            if let k = t.firstIndex(where: { (s) -> Bool in return !s.isWhitespace }) {
                firstNonWhiteSpace = k
            }
            
            let n = t[firstNonWhiteSpace..<t.endIndex]
            if n.isEmpty == false {
                if (n.first == "+" || n.first == "-" || n.first!.isNumber) {
                    let t = String(n.dropFirst())
                    let start = t.startIndex
                    let end   = t.firstIndex { (c) -> Bool in !c.isNumber } ?? t.endIndex
                    
                    if start <= end, let res = Double("\(n.first!)" + t[start..<end]) {
                        if res <= 2147483647 && res >= -2147483648  { return Int(res) }
                        else if res > 2147483647 { return 2147483647 }
                        else if res < -2147483648 { return -2147483648 }
                    }
                }
            }
        }
        return 0
    }
}
