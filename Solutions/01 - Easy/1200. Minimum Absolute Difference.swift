// Problem: https://leetcode.com/problems/minimum-absolute-difference/

class Solution {
    func absDiff(_ val1: Int, _ val2: Int) -> Int {
        return val1 > val2 ? val1 - val2 : val2 - val1
    }

    func minimumAbsDifference(_ arr: [Int]) -> [[Int]] {
        let sortedArray = arr.sorted()
        var output = [[Int]](), min = Int.max
        for index in sortedArray.indices where index != sortedArray.count - 1 {
            let diff = absDiff(sortedArray[index], sortedArray[index + 1])
            if min == diff {
                output.append([sortedArray[index], sortedArray[index + 1]])
            } else if min > diff {
                output = [[sortedArray[index], sortedArray[index + 1]]]
                min = diff
            }
        }
        return output
    }
}
