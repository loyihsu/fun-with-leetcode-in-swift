// Problem: https://leetcode.com/problems/water-bottles/

class Solution {
    func numWaterBottles(_ numBottles: Int, _ numExchange: Int) -> Int {
        var bottles = numBottles, output = 0, left = 0
        while bottles > 0 {
            output += bottles
            let temp = bottles + left
            left = temp % numExchange
            bottles = temp / numExchange
        }
        return output
    }
}
