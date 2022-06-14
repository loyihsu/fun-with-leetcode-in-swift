// Problem: https://leetcode.com/problems/distribute-candies-to-people/

class Solution {
    func distributeCandies(_ candies: Int, _ num_people: Int) -> [Int] {
        var restingCandy = candies, cur = 0, output = [Int](repeating: 0, count: num_people)
        while restingCandy > 0 {
            cur += 1
            output[(cur - 1) % num_people] += restingCandy >= cur ? cur : restingCandy
            restingCandy -= restingCandy >= cur ? cur : restingCandy
        }
        return output
    }
}
