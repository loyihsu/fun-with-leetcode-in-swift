// Problem: https://leetcode.com/problems/merge-nodes-in-between-zeros/

class Solution {
    func mergeNodes(_ head: ListNode?) -> ListNode? {
        var lastZero: ListNode?, current = head
        while let currentNode = current {
            if currentNode.val == 0 {
                if runningSum != 0 {
                    lastZero.val = runningSum
                    runningSum = 0
                }
                lastZero.next = currentNode
                lastZero = currentNode
            } else {
                runningSum += currentNode.val
            }
            current = currentNode.next
        }
        lastZero = nil
        return newHead
    }
}
