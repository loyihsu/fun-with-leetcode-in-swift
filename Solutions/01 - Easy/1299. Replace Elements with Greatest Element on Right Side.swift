// Problem: https://leetcode.com/problems/replace-elements-with-greatest-element-on-right-side/

class Solution {
    func replaceElements(_ arr: [Int]) -> [Int] {
        var temp = -1, large = -1, array = arr, index = arr.count - 1
        while index >= 0 {
            if array[index] > temp {
                temp = array[index]
            }
            array[index] = large
            large = temp
            index -= 1
        }
        return array
    }
}
