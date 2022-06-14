// Problem: https://leetcode.com/problems/number-of-students-doing-homework-at-a-given-time/

class Solution {
    func busyStudent(_ startTime: [Int], _ endTime: [Int], _ queryTime: Int) -> Int {
        var studentCount = 0
        for index in startTime.indices where queryTime >= startTime[index] && queryTime <= endTime[index] {
            studentCount += 1
        }
        return studentCount
    }
}
