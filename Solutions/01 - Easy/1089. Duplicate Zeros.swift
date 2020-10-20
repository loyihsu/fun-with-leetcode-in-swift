// Problem: https://leetcode.com/problems/duplicate-zeros/

class Solution {
    func duplicateZeros(_ arr: inout [Int]) {
        var index = 0
        while index < arr.count {
            if arr[index] == 0 {
                var temp = 0
                for jndex in index..<arr.count {
                    var swap = arr[jndex]
                    arr[jndex] = temp
                    temp = swap
                }
                index += 1
            }
            index += 1
        }
    }
}
