// Problem: https://leetcode.com/problems/rearrange-spaces-between-words/

class Solution {
    func reorderSpaces(_ text: String) -> String {
        let parsed = text.components(separatedBy: .whitespaces).filter { $0.isEmpty == false }
        let spaceCount = text.filter { $0 == " " }.count
        let betweenSpacesCount = parsed.count - 1 > 0 ? spaceCount / (parsed.count - 1) : spaceCount
        let spaces = String(repeating: " ", count: betweenSpacesCount)
        var result = "\(parsed.joined(separator: spaces))"
        while result.count < text.count {
            result.append(" ")
        }
        return result
    }
}
