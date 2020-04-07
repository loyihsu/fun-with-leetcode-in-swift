// Problem: https://leetcode.com/problems/add-two-numbers/

class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var carry = 0
        var temp1: ListNode? = l1
        var temp2: ListNode? = l2
        var answer: ListNode?

        while temp1 != nil || temp2 != nil {

            var newValue = carry

            carry = 0

            if let value = temp1?.val {
                newValue += value
            }

            if let value = temp2?.val {
                newValue += value
            }

            if newValue >= 10 {
                newValue -= 10
                carry = 1
            }

            let newNode = ListNode.init(newValue)
            if answer == nil {
                answer = newNode
            } else {
                var start = answer

                while start?.next != nil {
                    start = start?.next
                }

                start?.next = newNode
            }


            if temp1 != nil {
                temp1 = temp1?.next
            }

            if temp2 != nil {
                temp2 = temp2?.next
            }
        }

        if carry != 0 {
            let newNode = ListNode.init(carry)
            var start = answer

            while start?.next != nil {
                start = start?.next
            }

            start?.next = newNode
        }

        return answer
    }
}
