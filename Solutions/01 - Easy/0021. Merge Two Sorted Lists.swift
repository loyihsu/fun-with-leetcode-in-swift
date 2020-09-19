// Problem: https://leetcode.com/problems/merge-two-sorted-lists/

class Solution {
    func createArray(_ head: ListNode?) -> [Int] {
        var output = [Int](), temp = head
        while let current = temp {
            output.append(current.val)
            temp = current.next
        }
        return output
    }
    func createList(_ array: [Int]) -> ListNode? {
        var output: ListNode? = nil, index = array.count - 1
        while index >= 0 {
            var newNode = ListNode(array[index], output)
            output = newNode
            index -= 1
        }
        return output
    }
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var array = createArray(l1)
        array.append(contentsOf: createArray(l2))
        return createList(array.sorted())
    }
}
