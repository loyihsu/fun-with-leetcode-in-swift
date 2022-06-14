// Problem: https://leetcode.com/problems/a-number-after-a-double-reversal/

class Solution {
    func createReversedInt(_ num: Int) -> Int {
        var array = [Int](), temp = num
        while temp > 0 {
            array.append(temp % 10)
            temp /= 10
        }
        for int in array {
            temp = temp * 10 + int
        }
        return temp
    }

    func isSameAfterReversals(_ num: Int) -> Bool {
        return createReversedInt(createReversedInt(num)) == num
    }
}
