// Problem: https://leetcode.com/problems/goat-latin/

class Solution {
    func toGoatLatin(_ S: String) -> String {
        var chunks = S.components(separatedBy: .whitespaces)
        for (index, chunk) in chunks.enumerated() {
            if !"AEIOUaeiou".contains(chunk.first!) {
                chunks[index].append(chunks[index].remove(at: chunks[index].startIndex))
            }
            chunks[index].append("ma")
            chunks[index].append(String(repeating: "a", count: index + 1))
        }
        return chunks.joined(separator: " ")
    }
}
