// Problem: https://leetcode.com/problems/replace-all-s-to-avoid-consecutive-repeating-characters/

class Solution {
    func modifyString(_ s: String) -> String {
        var output = Array(s), possibilities = Array("abcdefghijklmnopqrstuvwxyz")
        for idx in output.indices where output[idx] == "?" {
            if idx == 0 {
                output[idx] = idx + 1 < output.count ? possibilities.filter({ $0 != output[idx+1] }).shuffled().first! : possibilities.shuffled().first!
            } else if idx == output.count - 1 {
                output[idx] = idx - 1 >= 0 ? possibilities.filter({ $0 != output[idx-1] }).shuffled().first! : possibilities.shuffled().first!
            } else {
                output[idx] = possibilities.filter({ $0 != output[idx-1] && $0 != output[idx+1] }).shuffled().first!
            }
        }
        return String(output)
    }
}
