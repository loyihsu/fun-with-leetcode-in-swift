// Problem: https://leetcode.com/problems/merge-two-sorted-lists/

class Solution {
    func reverseList(_ list: ListNode?) -> ListNode? {
        var output: ListNode? = nil, temp = list
        while let cur = temp {
            var newNode = ListNode.init(cur.val)
            newNode.next = output
            output = newNode
            temp = cur.next
        }
        return output
    }
    
    func add(_ node: ListNode, to list: inout ListNode?) {
        node.next = list != nil ? list : nil
        list = node
    }
    
    func addRest(of list: inout ListNode?, to output: inout ListNode?) {
        var temp = list
        while let cur = temp {
            var newNode = ListNode.init(cur.val)
            add(newNode, to: &output)
            temp = cur.next
        }
    }
    
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var newList: ListNode?
        var t1 = l1, t2 = l2
        
        while let temp1 = t1, let temp2 = t2 {
            var newNode = temp1.val <= temp2.val ? ListNode.init(temp1.val) : ListNode.init(temp2.val)
            t1 = temp1.val <= temp2.val ? temp1.next : t1
            t2 = temp1.val <= temp2.val ? t2 : temp2.next
            add(newNode, to: &newList)
        }
        
        if newList == nil {
            if t1 != nil { return t1 }
            else { return t2 }
        }

        addRest(of: &t1, to: &newList)
        addRest(of: &t2, to: &newList)
        return reverseList(newList)
    }
}
