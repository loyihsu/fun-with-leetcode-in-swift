// Problem: https://leetcode.com/problems/reducing-dishes/

// Example: [-1,-8,0,5,-9]
// sorted().reversed(): [5,0,-1,-8,-9]
// Round 1: (global = 0), (sum = 0 + 5), (current = 0 + 5) -> global = 5
// Round 2: (global = 5), (sum = 5 + 0), (current = 5 + 5) -> global = 10
// Round 3: (global = 10), (sum = 5 - 1), (current = 10 + 4) -> global = 14
// Round 4: (global = 14), (sum = 5 - 8), (current = 14 - 3) -> global = 14
// Round 5: (global = 14), (sum = -3 - 9), (current = 11 - 12) -> global = 14

class Solution {
    func maxSatisfaction(_ satisfaction: [Int]) -> Int {
        var global = 0, current = 0, sum = 0
        var sat = satisfaction.sorted().reversed()

        for s in sat {
            sum += s
            current += sum

            global = max(global, current)
        }

        return global
    }
}
