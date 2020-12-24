// Problem: https://leetcode.com/problems/make-the-string-great/

class Solution {
    func makeGood(_ s: String) -> String {
        var output = s, idx = output.startIndex
        while output.startIndex != output.endIndex && idx < output.index(before: output.endIndex) {
            let jdx = output.index(after: idx)
            if output[idx] != output[jdx] && output[idx].lowercased() == output[jdx].lowercased() {
                output.remove(at: jdx)
                output.remove(at: idx)
                idx = idx > output.startIndex ? output.index(before: idx) : idx
            } else {
                idx = jdx
            }
        }
        return output
    }
}
