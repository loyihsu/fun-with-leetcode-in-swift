// Problem: https://leetcode.com/problems/kids-with-the-greatest-number-of-candies/

class Solution {
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        let max = candies.max()!
        return candies.map { $0 + extraCandies >= max ? true : false }
    }
}
