// Problem: https://leetcode.com/problems/merge-k-sorted-lists/

class Solution {
    func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
        if lists.isEmpty { return nil } else if lists.count == 1 { return lists[0] }

        var merged = [Int]()
        var output: ListNode?

        for list in lists {
            var head = list
            while let temp = head {
                merged.append(temp.val)
                head = temp.next
            }
        }

        merged.sort()

        // Create output list from array
        while let last = merged.popLast() {
            if output == nil {
                output = ListNode(last)
            } else {
                var newNode = ListNode(last)
                newNode.next = output
                output = newNode
            }
        }

        return output
    }
}
