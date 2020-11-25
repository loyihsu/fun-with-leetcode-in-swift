// Problem: https://leetcode.com/problems/baseball-game/

class Solution {
    func calPoints(_ ops: [String]) -> Int {
        var stack = [Int]()
        for item in ops {
            if item == "C" {
                stack.popLast()
            } else if item == "D" {
                stack.append(stack.last! * 2)
            } else if item == "+" {
                stack.append(stack[stack.count - 1] + stack[stack.count - 2])
            } else {
                stack.append(Int(item)!)
            }
        }
        return stack.reduce(0, +)
    }
}
