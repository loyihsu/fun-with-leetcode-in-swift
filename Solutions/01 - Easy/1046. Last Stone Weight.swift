// Problem: https://leetcode.com/problems/last-stone-weight/

class Solution {
    func maxFinder(_ array: inout [Int]) -> Int {
        var curmax = (-1, -1)
        for (n, i) in array.enumerated() where i > curmax.1 {
            curmax.0 = n
            curmax.1 = i
        }
        array.remove(at: curmax.0)
        return curmax.1
    }
    func lastStoneWeight(_ stones: [Int]) -> Int {
        var col = stones, temp1 = -1, temp2 = -1, swap = -1
        while col.count > 1 {
            temp1 = maxFinder(&col)
            temp2 = maxFinder(&col)
            if temp1 > temp2 {
                swap = temp2
                temp2 = temp1
                temp1 = swap
            }
            if temp1 != temp2 {
                col.append(temp2-temp1)
            }   
        }
        return col.isEmpty ? 0 : col[0]
    }
}
