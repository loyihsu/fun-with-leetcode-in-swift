// Problem: https://leetcode.com/problems/valid-mountain-array/

class Solution {
    func validMountainArray(_ arr: [Int]) -> Bool {
        guard arr.count >= 3 else { return false }
        let maximum = arr.max()
        var up = true, last: Int?

        for idx in arr.indices {
            if let last {
                if !(up && arr[idx] > last || !up && arr[idx] < last) {
                    return false
                }
            }

            if arr[idx] == maximum, last != nil, idx != arr.count - 1 {
                up = false
            }

            last = arr[idx]
        }

        return up == false
    }
}
