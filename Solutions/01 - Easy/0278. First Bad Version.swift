// Problem: https://leetcode.com/problems/first-bad-version/

class Solution: VersionControl {
    func firstBadVersion(_ n: Int) -> Int {
        var left = 0, right = n, temp = n
        while left <= right {
            let mid = (left + right) / 2
            if isBadVersion(mid) == true {
                temp = mid
                right = mid - 1
            } else {
                left = mid + 1
            }
        }
        return temp
    }
}
