// Problem: https://leetcode.com/problems/merge-intervals/

class Solution {
    func merge(_ intervals: [[Int]]) -> [[Int]] {
        var output = [[Int]]()

        for interval in intervals {
            var interval = interval
            if output.contains(where: { overlaps(lhs: $0, rhs: interval) }) {
                var merged = [Int]()
                for idx in output.indices where overlaps(lhs: output[idx], rhs: interval) {
                    interval = merge(lhs: output[idx], rhs: interval)
                    merged.append(idx)
                }
                merged
                    .reversed()
                    .forEach {
                        output.remove(at: $0)
                    }
            }
            output.append(interval)
        }

        return output
    }

    private func overlaps(lhs: [Int], rhs: [Int]) -> Bool {
        let left = lhs[0] < rhs[0] ? lhs : rhs
        let right = left == lhs ? rhs : lhs
        return left[1] >= right[0]
    }

    private func merge(lhs: [Int], rhs: [Int]) -> [Int] {
        let least = min(lhs[0], rhs[0])
        let most = max(lhs[1], rhs[1])
        return [least, most]
    }
}
