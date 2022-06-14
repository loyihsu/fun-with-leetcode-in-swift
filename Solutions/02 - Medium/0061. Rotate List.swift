// Problem: https://leetcode.com/problems/rotate-list/

class Solution {
    func rotateRight(_ head: ListNode?, _ k: Int) -> ListNode? {
        guard head != nil, k > 0 else { return head }
        var list = [Int](), temp = head, last = head, counter = 0
        while let current = temp {
            list.append(current.val)
            temp = current.next
        }
        let change = k % list.count
        guard change > 0 else { return head }
        temp = head
        while last?.next != nil {
            if counter >= change {
                temp = temp?.next
            }
            last = last?.next
            counter += 1
        }
        let newHead = temp?.next
        temp?.next = nil
        last?.next = head
        return newHead
    }
}
