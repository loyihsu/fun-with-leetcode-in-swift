// Problem: https://leetcode.com/problems/palindrome-linked-list/

class Solution {
    func isPalindrome(_ head: ListNode?) -> Bool {
        var arr = [Int](), temp = head
        while let cur = temp {
            arr.append(cur.val)
            temp = cur.next
        }
        var left = 0, right = arr.count - 1
        while left < right {
            if arr[left] != arr[right] {
                return false
            }
            (left, right) = (left+1, right-1)
        }
        return true
    }
}
