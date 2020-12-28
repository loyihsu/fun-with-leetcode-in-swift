// Problem: https://leetcode.com/problems/slowest-key/

class Solution {
    func slowestKey(_ releaseTimes: [Int], _ keysPressed: String) -> Character {
        var slowest = (keysPressed.first!, releaseTimes[0])
        for idx in 1..<releaseTimes.count {
            if releaseTimes[idx] - releaseTimes[idx-1] > slowest.1 {
                slowest = (keysPressed[keysPressed.index(keysPressed.startIndex, offsetBy: idx)], releaseTimes[idx] - releaseTimes[idx-1]) 
            } else if releaseTimes[idx] - releaseTimes[idx-1] == slowest.1 {
                if keysPressed[keysPressed.index(keysPressed.startIndex, offsetBy: idx)] > slowest.0 {
                    slowest = (keysPressed[keysPressed.index(keysPressed.startIndex, offsetBy: idx)], releaseTimes[idx] - releaseTimes[idx-1])
                }
            }
        }
        return slowest.0
    }
}
