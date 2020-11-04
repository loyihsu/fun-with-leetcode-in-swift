// Problem: https://leetcode.com/problems/find-the-distance-value-between-two-arrays/

class Solution { 
    func checkRange(_ item: Int, _ map: [Int: Bool], _ d: Int) -> Bool {
        var res = false
        for num in 0...d where map[item-num] != nil || map[item+num] != nil {
            res = true
            break
        }
        return res
    }
    func findTheDistanceValue(_ arr1: [Int], _ arr2: [Int], _ d: Int) -> Int {
        var count = 0, arr2Map = [Int: Bool]()
        arr2.forEach { arr2Map[$0] = true }
        for item in arr1 where !checkRange(item, arr2Map, d) {
            count += 1            
        }
        return count
    }
}
