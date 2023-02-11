// Problem: https://leetcode.com/problems/separate-the-digits-in-an-array/description/

class Solution {
    func separateDigits(_ nums: [Int]) -> [Int] {
        nums
            .flatMap {
                $0.separateDigits()
            }
    }
}

extension Int {
    func separateDigits() -> [Int] {
        var output = [Int]()
        var copySelf = self
        while copySelf >= 10 {
            output.append(copySelf % 10)
            copySelf /= 10
        }
        output.append(copySelf)
        return output.reversed()
    }
}
