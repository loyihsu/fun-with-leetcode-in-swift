// Problem: https://leetcode.com/problems/rearrange-words-in-a-sentence/

class Solution {
    func arrangeWords(_ text: String) -> String {
        var components = text.components(separatedBy: .whitespaces)
            .filter({ $0.isEmpty == false })
            .map({ $0.lowercased() })
        components.sort({ $0.count < $1.count })
        var first = components[0].removeFirst().uppercased()
        components[0].insert(contentsOf: first, at: components[0].startIndex)
        return components.joined(separator: " ")
    }
}
