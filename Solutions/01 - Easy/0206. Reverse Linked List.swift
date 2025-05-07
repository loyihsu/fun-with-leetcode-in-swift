// Problem: https://leetcode.com/problems/reverse-linked-list/

class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        var prev = ListNode?.none
        var current = head

        while current != nil {
            var next = current?.next
            current?.next = prev
            prev = current
            current = next
        }

        return prev
    }
}
