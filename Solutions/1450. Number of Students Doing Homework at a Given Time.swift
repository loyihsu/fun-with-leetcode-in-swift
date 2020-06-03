// Problem: https://leetcode.com/problems/number-of-students-doing-homework-at-a-given-time/

class Solution {
    func busyStudent(_ startTime: [Int], _ endTime: [Int], _ queryTime: Int) -> Int {           
        var studentCount = 0       
        
        for n in 0..<startTime.count {
            if queryTime >= startTime[n] && queryTime <= endTime[n] {
                studentCount += 1
            }
        }
        
        return studentCount
    }
}
