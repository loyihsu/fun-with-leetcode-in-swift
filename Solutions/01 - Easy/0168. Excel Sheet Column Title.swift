// Problem: https://leetcode.com/problems/excel-sheet-column-title/

class Solution {
    var map = [Int: Character]()
    init() {
        "ABCDEFGHIJKLMNOPQRSTUVWXYZ".enumerated().forEach {
            map[$0] = $1
        }
    }

    func helper(_ number: Int) -> String {
        return "\(map[number - 1 >= 0 ? number - 1 : 25]!)"
    }

    func convertToTitle(_ n: Int) -> String {
        var temp = n, output = ""
        while temp > 0 {
            let current = temp % 26
            output = "\(helper(current))\(output)"
            temp = (temp - 1) / 26
        }
        return output
    }
}
