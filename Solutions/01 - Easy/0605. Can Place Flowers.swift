// Problem: https://leetcode.com/problems/can-place-flowers/

class Solution {
    func checkAndPlace(_ flowerbed: inout [Int], idx: Int) -> Bool {
        var flag = true
        if idx - 1 >= 0, flowerbed[idx - 1] == 1 {
            flag = false
        }
        if idx + 1 < flowerbed.count, flowerbed[idx + 1] == 1 {
            flag = false
        }
        if flag {
            flowerbed[idx] = 1
        }
        return flag
    }

    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
        var n = n, flowerbed = flowerbed
        for idx in flowerbed.indices where flowerbed[idx] == 0 && n > 0 {
            if checkAndPlace(&flowerbed, idx: idx) {
                n -= 1
            }
        }
        return n == 0
    }
}
