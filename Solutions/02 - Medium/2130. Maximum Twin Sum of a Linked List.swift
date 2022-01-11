// Problem: https://leetcode.com/problems/maximum-twin-sum-of-a-linked-list/

class Solution {
    func pairSum(_ head: ListNode?) -> Int {
        var stack: ListNode?, maximum = Int.min, temp = head, count = 0, idx = 0
        while let current = temp {
            count += 1
            temp = current.next
        }
        temp = head
        while let current = temp {
            temp = current.next
            if idx < count / 2 {
                current.next = stack
                stack = current
            } else if let last = stack {
                stack = last.next
                let sum = last.val + current.val
                maximum = sum > maximum ? sum : maximum
            }
            idx += 1
        }
        return maximum
    }
}
