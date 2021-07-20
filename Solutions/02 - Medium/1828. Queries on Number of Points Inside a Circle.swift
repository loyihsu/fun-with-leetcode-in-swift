// Problem: https://leetcode.com/problems/queries-on-number-of-points-inside-a-circle/

class Solution {
    func distance(centre: (Int, Int), point: (Int, Int)) -> Double {
        let xs = (centre.0 - point.0) * (centre.0 - point.0)
        let ys = (centre.1 - point.1) * (centre.1 - point.1)
        return sqrt(Double(xs) + Double(ys))
    }
    func countPoints(_ points: [[Int]], _ queries: [[Int]]) -> [Int] {
        var output = [Int]()
        for query in queries {
            let r = Double(query[2])
            var count = 0
            for point in points {
                let dis = distance(centre: (query[0], query[1]),
                                   point: (point[0], point[1]))
                if dis <= r {
                    count += 1
                }
            }
            output.append(count)
        }
        return output
    }
}
