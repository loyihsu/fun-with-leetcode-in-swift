// Problem: https://leetcode.com/problems/shuffle-an-array/

class Solution {
    var array: [Int]
    init(_ nums: [Int]) {
        array = nums
    }
    /** Resets the array to its original configuration and return it. */
    func reset() -> [Int] {
        return array
    }
    /** Returns a random shuffling of the array. */
    func shuffle() -> [Int] {
        var arr = array
        for idx in arr.indices {
            let rand = Int.random(in: idx..<arr.count)
            (arr[idx], arr[rand]) = (arr[rand], arr[idx])
        }
        return arr
    }
}
