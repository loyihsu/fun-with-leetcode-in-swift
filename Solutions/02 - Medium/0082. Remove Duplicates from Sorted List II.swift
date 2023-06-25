// https://leetcode.com/problems/remove-duplicates-from-sorted-list-ii/description/

class Solution {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        var map: [Int: Int] = [:]
        var temp = head

        while let current = temp {
            map[current.val, default: 0] += 1
            temp = current.next
        }

        temp = head

        // remove first if needed
        while let current = temp, map[current.val] != 1 {
            temp = current.next
        }

        var prev: ListNode?
        var traverser = temp

        // remove a middle element or the last element
        while let current = traverser {
            if map[current.val] == 1 {
                prev = traverser
                traverser = current.next
            } else {
                prev?.next = current.next
                traverser = current.next
            }
        }

        return temp
    }
}
