// Problem: https://leetcode.com/problems/remove-linked-list-elements/

class Solution {
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        var temp = head, newList: ListNode?, last: ListNode?
        while let element = temp {
            if element.val != val {
                let newNode = ListNode(element.val)
                if let last {
                    last.next = newNode
                } else {
                    newList = newNode
                }
                last = newNode
            }
            temp = element.next
        }
        return newList
    }
}
