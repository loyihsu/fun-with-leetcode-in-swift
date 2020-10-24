// Problem: https://leetcode.com/problems/intersection-of-two-linked-lists/

class Solution {
    func createStack(from head: ListNode?) -> [ListNode] {
        var res = [ListNode](), temp = head
        while let t = temp {
            res.append(t)
            temp = t.next
        }
        return res
    }
    func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
        var a = createStack(from: headA), b = createStack(from: headB), res: ListNode? = nil
        while a.isEmpty == false && b.isEmpty == false {
            var i = a.removeLast(), j = b.removeLast()
            if i === j {
                res = i 
            } else {
                break
            }
        }
        return res
    }
}
