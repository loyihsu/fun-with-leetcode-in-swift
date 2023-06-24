// Problem: https://leetcode.com/problems/maximum-profit-in-job-scheduling/

extension Array {
    subscript(safe idx: Int) -> Element? {
        idx < 0 || idx >= count ? nil : self[idx]
    }
}

class Solution {
    typealias Job = (range: Range<Int>, profit: Int)
    func binarySearch(in jobs: [Job], val: Int, _ left: Int, _ right: Int) -> Int {
        guard left <= right else { return left - 1 }
        let mid = (left + right) / 2
        if val < jobs[mid].range.upperBound {
            binarySearch(in: jobs, val: val, left, right - 1)
        } else {
            binarySearch(in: jobs, val: val, mid + 1, right)
        }
    }

    func jobScheduling(_ startTime: [Int], _ endTime: [Int], _ profit: [Int]) -> Int {
        let ranges: [Job] = startTime.indices.map { idx in
            (range: startTime[idx] ..< endTime[idx], profit: profit[idx])
        }.sorted { $0.range.upperBound < $1.range.upperBound }
        var result = [Int](repeating: 0, count: ranges.count)
        result[0] = ranges.first!.profit
        for idx in 1 ..< ranges.count {
            let jdx = binarySearch(in: ranges, val: ranges[idx].range.lowerBound, 0, idx - 1)
            let val = result[safe: jdx] ?? 0
            result[idx] = max(val + ranges[idx].profit, result[idx - 1])
        }
        return result.last!
    }
}
