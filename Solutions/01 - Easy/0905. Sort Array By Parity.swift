// Problem: https://leetcode.com/problems/sort-array-by-parity/

class Solution {
    func sortArrayByParity(_ A: [Int]) -> [Int] {
        var output = [Int](repeating: -1, count: A.count), temp = [Int](repeating: -1, count: A.count)
        var index = 0, tempCount = 0
        for element in A {
            if element % 2 == 0 {
                output[index] = element
                index += 1
            } else {
                temp[tempCount] = element
                tempCount += 1
            }
        }
        if index == 0 { return temp } else if tempCount == 0 { return output }
        for i in 0..<tempCount {
            output[index] = temp[i]
            index += 1
        }
        return output
    }
}
