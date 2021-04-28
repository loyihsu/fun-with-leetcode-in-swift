// Problem: https://leetcode.com/problems/linked-list-cycle/

class Solution {
    func hasCycle(_ head: ListNode?) -> Bool {
        guard head != nil else { return false }
        var slow = head, fast = head?.next
        while slow !== fast {
            if slow == nil || fast?.next == nil {
                return false
            }
            slow = slow?.next
            fast = fast?.next?.next
        }
        return true
    }
}
