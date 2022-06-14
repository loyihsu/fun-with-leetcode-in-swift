// Problem: https://leetcode.com/problems/capitalize-the-title/

class Solution {
    func separate(_ title: String) -> [String] {
        let title = "\(title) "
        var output = [String](), temp = ""
        for char in title {
            if char == " " {
                output.append(temp)
                temp = ""
            } else {
                temp.append(char)
            }
        }
        return output
    }

    func capitalizeTitle(_ title: String) -> String {
        let separated = separate(title)
        let result = separated.map { input -> String in
            if input.count <= 2 {
                return input.lowercased()
            } else {
                let lowercased = input.lowercased(), uppercased = input.uppercased()
                return "\(uppercased.first!)\(lowercased[lowercased.index(after: lowercased.startIndex)...])"
            }
        }
        return result.reduce("") { "\($0) \($1)" }.trimmingCharacters(in: .whitespaces)
    }
}
