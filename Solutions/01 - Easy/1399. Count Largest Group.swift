// Problem: https://leetcode.com/problems/count-largest-group/

class Solution {
    var chart: [Character: Int]
    init() {
        chart = [Character: Int]()
        for item in "0123456789" {
            chart[item] = Int("\(item)")
        }
    }
    func countWithMaxSize(_ arr: [Int]) -> Int {
        var max = -1, count = 0
        for item in arr where max < item {
            max = item
        }
        for item in arr where item == max {
            count += 1
        }
        return count
    }
    func converter(_ num: Int) -> Int {
        var str = "\(num)", output = 0
        for dig in str {
            output += chart[dig]!
        }
        return output
    }
    func countLargestGroup(_ n: Int) -> Int {
        let maxValue = "\(n)".count * 9
        var book = [Int](repeating: 0, count: maxValue)
        for num in 1...n {
            book[converter(num)-1] += 1
        }
        return countWithMaxSize(book)
    }
}
