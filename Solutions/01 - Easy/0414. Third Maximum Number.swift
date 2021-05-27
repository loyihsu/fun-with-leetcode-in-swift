// Problem: https://leetcode.com/problems/third-maximum-number/

class Solution {
    private func findThirdMax(in array: [Int]) -> Int {
        var temp = array, max = (Int.min, Int.min)
        for i in 0..<3 {
            max = (Int.min, Int.min)
            for (index, item) in temp.enumerated() {
                if item > max.1 || max.0 == Int.min {
                    max.0 = index
                    max.1 = item
                }
            }
            temp.remove(at: max.0)
        }
        return max.1
    }

    func thirdMax(_ nums: [Int]) -> Int {
        var processedArray = Array(Set(nums))
        guard processedArray.count >= 3 else { return processedArray.max()! }
        return findThirdMax(in: processedArray)
    }
}
