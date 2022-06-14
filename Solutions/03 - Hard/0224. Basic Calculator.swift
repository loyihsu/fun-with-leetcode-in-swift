// Problem: https://leetcode.com/problems/basic-calculator/

class Solution {
    func calculate(_ s: String) -> Int {
        let str = normalise(s)
        return performPlusMinus(str)
    }

    func normalise(_ s: String) -> String {
        let str = s.components(separatedBy: .whitespaces).joined()
        var res = "", index = s.startIndex
        while index < str.endIndex {
            if str[index] == "(" {
                var p = precalc(str, str.index(after: index))
                if !res.isEmpty {
                    let last = str.index(before: index)
                    if str[last] == "-" {
                        p.0 = -p.0
                    }
                    res.popLast()
                    res.append(p.0 >= 0 ? "+\(p.0)" : "\(p.0)")
                } else {
                    res.append("\(p.0)")
                }
                index = p.1
            } else {
                res.append(str[index])
                index = str.index(after: index)
            }
        }
        return res
    }

    func precalc(_ s: String, _ pos: String.Index) -> (Int, String.Index) {
        var res = "", index = pos
        while s[index] != ")" {
            if s[index] == "(" {
                var p = precalc(s, s.index(after: index))
                if !res.isEmpty {
                    let last = s.index(before: index)
                    if s[last] == "-" {
                        p.0 = -p.0
                    }
                    res.popLast()
                    res.append(p.0 >= 0 ? "+\(p.0)" : "\(p.0)")
                } else {
                    res.append("\(p.0)")
                }
                index = p.1
            } else {
                res.append(s[index])
                index = s.index(after: index)
            }
        }
        return (performPlusMinus(res), s.index(after: index))
    }

    func performPlusMinus(_ str: String) -> Int {
        guard Int(str) == nil else { return Int(str)! }
        guard str.contains("+") || str.contains("-") else { return Int(str)! }
        var sign: Character = "+", num = "", res = 0
        for s in str {
            if s == "+" || s == "-" {
                res += (sign == "+" ? Int(num)! : -1 * Int(num)!)
                num = ""
                sign = s
            } else {
                num.append(s)
            }
        }
        if !num.isEmpty {
            res += (sign == "+" ? Int(num)! : -1 * Int(num)!)
            num = ""
        }
        return res
    }
}
