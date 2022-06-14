// Problem: https://leetcode.com/problems/sum-of-digits-of-string-after-convert/

class Solution {
    func getLucky(_ s: String, _ k: Int) -> Int {
        let pos = Array(" abcdefghijklmnopqrstuvwxyz")
        let digits = Array("0123456789")
        var cur = "", count = 0
        for char in s {
            let temp = "\(pos.firstIndex(of: char)!)"
            cur.append(temp)
        }
        for _ in 0 ..< k {
            count = 0
            for digit in cur {
                count += digits.firstIndex(of: digit)!
            }
            cur = "\(count)"
        }
        return Int(cur)!
    }
}
