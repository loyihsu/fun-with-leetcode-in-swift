// Problem: https://leetcode.com/problems/reverse-linked-list/

class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        var current = head, previous: ListNode?, next = head?.next
        while current != nil {
            let temp = next
            current?.next = previous
            next = next?.next
            previous = current
            current = temp
        }
        return previous
    }
}
