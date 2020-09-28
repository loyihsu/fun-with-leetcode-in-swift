// Problem: https://leetcode.com/problems/majority-element/

class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var dic = [Int:Int]()
        nums.forEach { dic[$0] = (dic[$0] ?? 0) + 1 }
        return dic.filter { $0.value > nums.count/2 }.first!.key
    }
}

