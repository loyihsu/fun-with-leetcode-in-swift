// Problem: https://leetcode.com/problems/reformat-date/

class Solution {
    func generateMonthMap() -> [String: String] {
        let months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
        var res = [String: String]()
        for (index, month) in months.enumerated() {
            res[month] = index + 1 < 10 ? "0\(index + 1)" : "\(index + 1)"
        }
        return res
    }

    func reformatDate(_ date: String) -> String {
        var temp = "", pos = 0, res = [String](repeating: "", count: 3)
        let months = generateMonthMap()
        for char in date {
            if char == " " {
                if pos == 0 {
                    temp.popLast()
                    temp.popLast()
                    temp = Int(temp)! < 10 ? "0\(temp)" : temp
                    res[2] = temp
                } else if pos == 1 {
                    res[1] = months[temp]!
                }
                temp = ""
                pos += 1
            } else {
                temp.append(char)
            }
        }
        res[0] = temp
        return res.joined(separator: "-")
    }
}
