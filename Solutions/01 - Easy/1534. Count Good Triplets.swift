// Problem: https://leetcode.com/problems/count-good-triplets/

class Solution {
    func countGoodTriplets(_ arr: [Int], _ a: Int, _ b: Int, _ c: Int) -> Int {
        var count = 0
        for k in 0 ..< arr.count {
            for j in 0 ..< k where abs(arr[j] - arr[k]) <= b {
                for i in 0 ..< j where abs(arr[i] - arr[j]) <= a && abs(arr[i] - arr[k]) <= c {
                    count += 1
                }
            }
        }
        return count
    }
}
