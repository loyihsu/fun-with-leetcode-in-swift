// Problem: https://leetcode.com/problems/time-needed-to-buy-tickets/

class Solution {
    func timeRequiredToBuy(_ tickets: [Int], _ k: Int) -> Int {
        return tickets.indices.reduce(0, { $0 + min(tickets[$1], tickets[k]-($1 <= k ? 0 : 1)) })
    }
}
