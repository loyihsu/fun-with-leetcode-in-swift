// Problem: https://leetcode.com/problems/assign-cookies/

class Solution {
    func findContentChildren(_ g: [Int], _ s: [Int]) -> Int {
        let greed = g.sorted(), size = s.sorted()
        var idx = 0, jdx = 0, count = 0
        while idx < greed.count && jdx < size.count {
            if greed[idx] > size[jdx] {
                jdx += 1
            } else {
                (count, idx, jdx) = (count+1, idx+1, jdx+1)
            }
        }
        return count
    }
}
