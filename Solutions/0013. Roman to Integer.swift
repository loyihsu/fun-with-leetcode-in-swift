// Problem: https://leetcode.com/problems/roman-to-integer/

class Solution {
    func romanToInt(_ s: String) -> Int {
        var cur = s.startIndex
        var amount = 0
        
        while cur != s.endIndex {
            if s[cur] == "I" {
                if cur != s.index(s.startIndex, offsetBy: s.count-1) {
                    if s[s.index(after: cur)] == "V" {
                        amount += 4
                        cur = (s.index(after: cur) < s.endIndex) ? s.index(cur, offsetBy: 2) : s.index(after: cur)
                    } else if s[s.index(after: cur)] == "X" {
                        amount += 9
                        cur = (s.index(after: cur) < s.endIndex) ? s.index(cur, offsetBy: 2) : s.index(after: cur)
                    } else {
                        amount += 1
                        cur = s.index(after: cur)
                    }
                } else {
                    amount += 1
                    cur = s.index(after: cur)
                }
            } else if s[cur] == "V" {
                amount += 5
                cur = s.index(after: cur)
            } else if s[cur] == "X" {
                if cur != s.index(s.startIndex, offsetBy: s.count-1) {
                    if s[s.index(after: cur)] == "L" {
                        amount += 40
                        cur = (s.index(after: cur) < s.endIndex) ? s.index(cur, offsetBy: 2) : s.index(after: cur)
                    } else if s[s.index(after: cur)] == "C" {
                        amount += 90
                        cur = (s.index(after: cur) < s.endIndex) ? s.index(cur, offsetBy: 2) : s.index(after: cur)
                    } else {
                        amount += 10
                        cur = s.index(after: cur)
                    }
                } else {
                    amount += 10
                    cur = s.index(after: cur)
                }
            } else if s[cur] == "L" {
                amount += 50
                cur = s.index(after: cur)
            } else if s[cur] == "C" {
                if cur != s.index(s.startIndex, offsetBy: s.count-1) {
                    if s[s.index(after: cur)] == "D" {
                        amount += 400
                        cur = (s.index(after: cur) < s.endIndex) ? s.index(cur, offsetBy: 2) : s.index(after: cur)
                    } else if s[s.index(after: cur)] == "M" {
                        amount += 900
                        cur = (s.index(after: cur) < s.endIndex) ? s.index(cur, offsetBy: 2) : s.index(after: cur)
                    } else {
                        amount += 100
                        cur = s.index(after: cur)
                    }
                } else {
                    amount += 100
                    cur = s.index(after: cur)
                }
            } else if s[cur] == "D" {
                amount += 500
                cur = s.index(after: cur)
            } else if s[cur] == "M" {
                amount += 1000
                cur = s.index(after: cur)
            }
        }
        
        return amount
    }
}
