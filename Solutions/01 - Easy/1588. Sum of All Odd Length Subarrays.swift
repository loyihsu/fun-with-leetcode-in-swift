// Problem: https://leetcode.com/problems/sum-of-all-odd-length-subarrays/

class Solution {
    func sumOddLengthSubarrays(_ arr: [Int]) -> Int {
        var sum = arr.reduce(0, +), size = 3
        while size <= arr.count {
            if arr.count == size {
                sum += arr.reduce(0, +)
            } else {
                for index in 0 ... arr.count - size {
                    var temp = 0
                    var debug = [Int]()
                    for offset in 0 ..< size {
                        temp += arr[index + offset]
                        debug.append(arr[index + offset])
                    }
                    sum += temp
                }
            }
            size += 2
        }
        return sum
    }
}
