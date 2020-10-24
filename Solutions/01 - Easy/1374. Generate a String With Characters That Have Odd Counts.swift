// Problem: https://leetcode.com/problems/generate-a-string-with-characters-that-have-odd-counts/

class Solution {
    func generateTheString(_ n: Int) -> String {
        var output = [Character](repeating: "a", count: n)
        if output.count % 2 == 0 {
            output[output.count-1] = "b"
        }
        return String(output)
    }
}
