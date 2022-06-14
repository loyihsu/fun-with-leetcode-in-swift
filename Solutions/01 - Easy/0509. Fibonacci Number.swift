// Problem: https://leetcode.com/problems/fibonacci-number/

class Solution {
    func fib(_ N: Int) -> Int {
        guard N != 0 else { return 0 }
        guard N != 1 else { return 1 }
        var num = [1, 0]
        for i in 0 ..< N - 1 {
            var temp = num[0] + num[1]
            num[1] = num[0]
            num[0] = temp
        }
        return num[0]
    }
}
