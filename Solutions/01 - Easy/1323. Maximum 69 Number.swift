// Problem: https://leetcode.com/problems/maximum-69-number/

class Solution {
    func maximum69Number(_ num: Int) -> Int {
        var n = [Int](repeating: 0, count: 4), input = num, output = 0, acc = 0, index = 3, flag = false
        while input > 0 {
            n[acc] = input % 10
            input /= 10
            acc += 1
        }
        while index >= 0 {
            if n[index] != 0 {
                if flag == false {
                    if n[index] == 6 {
                        output = 10 * output + 9
                        flag = true
                    } else {
                        output = 10 * output + n[index]
                    }
                } else {
                    output = 10 * output + n[index]
                }
            }
            index -= 1
        }
        return output
    }
}
