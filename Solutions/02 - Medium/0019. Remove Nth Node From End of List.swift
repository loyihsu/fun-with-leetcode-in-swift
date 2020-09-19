// Problem: https://leetcode.com/problems/remove-nth-node-from-end-of-list/

class Solution {
    func createArray(from head: ListNode?) -> [Int] {
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
            var newNode = ListNode.init(array[index], output)
            output = newNode
            index -= 1
        }
        return output
    }
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        var temp = createArray(from: head)
        temp.remove(at: temp.count - n)
        return createList(temp)
    }
}
