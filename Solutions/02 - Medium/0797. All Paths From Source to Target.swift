// Problem: https://leetcode.com/problems/all-paths-from-source-to-target/

class Solution {
    func allPathsSourceTarget(_ graph: [[Int]]) -> [[Int]] {
        var stack = [[0]], successfulSearch = [[Int]]()
        stack.reserveCapacity(90)
        let destination = graph.count - 1
        while let current = stack.popLast() {
            if let last = current.last {
                if current.last == destination {
                    successfulSearch.append(current)
                } else {
                    for possibility in graph[last] {
                        var temp = current
                        temp.append(possibility)
                        stack.append(temp)
                    }
                }
            }
        }
        return successfulSearch
    }
}
