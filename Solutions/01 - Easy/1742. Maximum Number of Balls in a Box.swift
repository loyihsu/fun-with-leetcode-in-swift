// Problem: https://leetcode.com/problems/maximum-number-of-balls-in-a-box/

class Solution {
    func converter(_ number: Int) -> Int {
        var number = number, output = 0
        while number > 0 {
            output += number % 10
            number /= 10
        }
        return output
    }
    func findMaxCountsSize(_ limit: Int) -> Int {
        var limit = limit, count = 0, output = 0
        while limit > 0 {
            count += 1
            limit /= 10
        }
        for _ in 0..<count {
            output += 9
        }
        return output
    }
    func countBalls(_ lowLimit: Int, _ highLimit: Int) -> Int {
        var counts = [Int](repeating: 0, count: findMaxCountsSize(highLimit) + 1), max = 0
        for number in lowLimit...highLimit {
            let temp = converter(number)
            counts[temp] += 1
            max = counts[temp] > max ? counts[temp] : max
        }
        return max
    }
}
