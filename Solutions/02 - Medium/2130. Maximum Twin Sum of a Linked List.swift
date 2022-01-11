// Problem: https://leetcode.com/problems/maximum-twin-sum-of-a-linked-list/

class Solution {
    func pairSum(_ head: ListNode?) -> Int {
        var stack: ListNode?, maximum = Int.min, fast = head, head = head
        while fast != nil, let current = head {
            fast = fast?.next?.next
            head = current.next
            current.next = stack
            stack = current
        }
        while let current = head {
            if let top = stack {
                stack = top.next
                let sum = top.val + current.val
                maximum = sum > maximum ? sum : maximum
            }
            head = current.next
        }
        return maximum
    }
}
