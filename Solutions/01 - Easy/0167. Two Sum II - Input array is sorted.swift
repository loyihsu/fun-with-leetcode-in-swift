// Problem: https://leetcode.com/problems/two-sum-ii-input-array-is-sorted/

class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var index = 0, jndex = numbers.count-1, output = [Int]()
        while index < jndex {
            if numbers[index] + numbers[jndex] == target {
                output = [index+1, jndex+1]
                break
            } else if numbers[index] + numbers[jndex] > target {
                jndex -= 1
            } else if numbers[index] + numbers[jndex] < target {
                index += 1
            }
        }
        return output
    }
}
