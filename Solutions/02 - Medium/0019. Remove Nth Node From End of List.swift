// Problem: https://leetcode.com/problems/remove-nth-node-from-end-of-list/

class Solution {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        var fastCursor = head
        var slowCursor = head
        var counter = 0

        while let fast = fastCursor {
            if counter < n + 1 {
                fastCursor = fast.next
                counter += 1
            } else {
                fastCursor = fast.next
                slowCursor = slowCursor?.next
            }
        }

        var head = head

        if counter == n + 1 {
            slowCursor?.next = slowCursor?.next?.next
        } else {
            head = head?.next
        }

        return head
    }
}
