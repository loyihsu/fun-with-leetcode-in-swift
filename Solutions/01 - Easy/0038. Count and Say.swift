// Problem: https://leetcode.com/problems/count-and-say/

class Solution {
    func countAndSay(_ n: Int) -> String {
        var str = "1", count = 0, temp: Character = "T", strTemp = ""
        for _ in 0..<n-1 {
            strTemp = ""
            temp = "T"
            count = 0
            for char in str {
                if temp == "T" {
                    temp = char
                    count = 1
                } else if temp == char {
                    count += 1
                } else {
                    strTemp += "\(count)\(temp)"
                    count = 1
                    temp = char
                }
            }
            if count != 0 {
                strTemp += "\(count)\(temp)"
            }
            str = strTemp
        }
        return str
    }
}
