// Problem: https://leetcode.com/problems/merge-two-sorted-lists/

class Solution {
    func appendItem(_ newList: inout ListNode, _ newNode: ListNode) {
        var temp = newList
        while let next = temp.next {
            temp = next
        }
        temp.next = newNode
    }
    
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var newList: ListNode?
        
        var t1 = l1
        var t2 = l2
        
        while let temp1 = t1, let temp2 = t2 {
            var newNode: ListNode?
            
            if temp1.val <= temp2.val {
                newNode = ListNode.init(temp1.val)
                t1 = temp1.next
            } else {
                newNode = ListNode.init(temp2.val)    
                t2 = temp2.next
            }
            
            if newList == nil {
                newList = newNode
            } else {
                appendItem(&newList!, newNode!)
            }
        }
        
        if let t = t1 {
            if newList == nil {
                newList = t
            } else {
                appendItem(&newList!, t)
            }
        }
        
        if let t = t2 {
            if newList == nil {
                newList = t
            } else {
                appendItem(&newList!, t)
            }
        }
        
        return newList
    }
}