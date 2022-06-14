// Problem: https://leetcode.com/problems/maximum-units-on-a-truck/

class Solution {
    func maximumUnits(_ boxTypes: [[Int]], _ truckSize: Int) -> Int {
        var boxes = boxTypes.map { ($0[0], $0[1]) }.sorted {
            $0.1 > $1.1
        }
        var output = (0, 0), idx = 0
        while output.0 < truckSize, idx < boxes.count {
            output.0 += 1
            output.1 += boxes[idx].1
            boxes[idx].0 -= 1
            if boxes[idx].0 == 0 {
                idx += 1
            }
        }
        return output.1
    }
}
