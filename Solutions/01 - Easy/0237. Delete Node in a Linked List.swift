// Problem: https://leetcode.com/problems/delete-node-in-a-linked-list/

class Solution {
    func deleteNode(_ node: ListNode?) {
        node!.val = node!.next!.val
        node!.next = node!.next!.next
    }
}
