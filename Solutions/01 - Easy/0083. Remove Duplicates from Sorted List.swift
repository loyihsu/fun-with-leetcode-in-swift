// Problem: https://leetcode.com/problems/remove-duplicates-from-sorted-list/

class Solution {
    func createList(_ arr: [Int]) -> ListNode? {
        var list: ListNode?, index = arr.count - 1
        while index >= 0 {
            list = ListNode(arr[index], list)
            index -= 1
        }
        return list
    }

    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        var last = Int.max, h = head, res = [Int]()
        while let temp = h {
            if temp.val != last { res.append(temp.val) }
            last = temp.val
            h = temp.next
        }
        return createList(res)
    }
}
