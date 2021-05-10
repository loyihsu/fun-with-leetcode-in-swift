// Problem: https://leetcode.com/problems/number-of-recent-calls/

class RecentCounter {
    var pings = [Int]()
    func ping(_ t: Int) -> Int {
        pings.append(t)
        var pos = 0
        for idx in pings.indices where pings[idx] >= t-3000 {
            pos = idx
            break
        }
        pings = Array(pings[pos...])
        return pings.count
    }
}
