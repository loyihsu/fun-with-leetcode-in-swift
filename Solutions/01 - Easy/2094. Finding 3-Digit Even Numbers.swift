// Problem: https://leetcode.com/problems/finding-3-digit-even-numbers/

class Solution {
    func canConstruct(_ number: Int, with digits: [Int: Int]) -> Bool {
        var temp = [Int: Int](), number = number
        while number > 0 {
            temp[number % 10, default: 0] += 1
            number /= 10
        }
        for key in temp.keys where digits[key, default: 0] < temp[key, default: 0] {
            return false
        }
        return true
    }

    func findEvenNumbers(_ digits: [Int]) -> [Int] {
        var output = [Int](), map = [Int: Int]()
        digits.enumerated().forEach { map[$1, default: 0] += 1 }
        for idx in 100 ... 999 where idx % 2 == 0 {
            if canConstruct(idx, with: map) {
                output.append(idx)
            }
        }
        return output
    }
}
