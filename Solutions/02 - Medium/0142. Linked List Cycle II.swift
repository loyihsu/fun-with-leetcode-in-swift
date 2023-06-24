// Problem: https://leetcode.com/problems/linked-list-cycle-ii/

class Solution {
    func detectCycle(_ head: ListNode?) -> ListNode? {
        var visitedNodes: [ListNode] = []
        var current = head

        while current != nil {
            if visitedNodes.contains(where: { current === $0 }) {
                return current
            }
            visitedNodes.append(current!)
            current = current?.next
        }

        return nil
    }
}
