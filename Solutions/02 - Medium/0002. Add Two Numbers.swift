// Problem: https://leetcode.com/problems/add-two-numbers/

class Solution {
    func attach(_ node: ListNode?, to list: inout ListNode?) {
        guard var start = list else { return }
        while let next = start.next {
            start = next
        }
        start.next = node
    }

    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var temp1: ListNode? = l1
        var temp2: ListNode? = l2
        var carry = 0, newValue = 0
        var answer: ListNode?

        while temp1 != nil || temp2 != nil || carry > 0 {
            newValue = carry
            carry = 0

            if let value = temp1?.val { newValue += value }
            if let value = temp2?.val { newValue += value }

            carry = newValue >= 10 ? 1 : 0
            newValue = carry != 0 ? newValue - 10 : newValue

            let newNode = ListNode.init(newValue)
            if answer == nil {
                answer = newNode
            } else {
                attach(newNode, to: &answer)
            }

            if let t = temp1 { temp1 = t.next }
            if let t = temp2 { temp2 = t.next }
        }

        return answer
    }
}
