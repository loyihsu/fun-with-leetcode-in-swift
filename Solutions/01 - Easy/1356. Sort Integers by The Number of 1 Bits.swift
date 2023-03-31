// Problem: https://leetcode.com/problems/sort-integers-by-the-number-of-1-bits/

class Solution {
    func countOnes(_ num: Int) -> Int {
        var num = num, count = 0
        while num > 0 {
            count += num % 2
            num /= 2
        }
        return count
    }

    func generateBitMap(_ arr: [Int]) -> [Int: [Int]] {
        var output = [Int: [Int]]()
        arr.forEach { output[countOnes($0), default: []].append($0) }
        return output
    }

    func sortByBits(_ arr: [Int]) -> [Int] {
        generateBitMap(arr).sorted { $0.key < $1.key }.flatMap { $1.sorted() }
    }
}
