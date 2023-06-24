// Problem: https://leetcode.com/problems/find-the-winner-of-the-circular-game/

class Solution {
    class ListNode {
        var value: Int
        var next: ListNode?
        init(_ value: Int, next: ListNode? = nil) {
            self.value = value
            self.next = next
        }
    }

    class List {
        var first: ListNode?
        func insert(_ val: Int) {
            var newNode = ListNode(val)
            if let first {
                var current: ListNode = first
                while current.next !== first {
                    current = current.next!
                }
                newNode.next = first
                current.next = newNode
            } else {
                first = newNode
                first?.next = first
            }
        }

        func remove(_ val: Int) -> Bool {
            guard first !== first?.next else { return false }
            var current = first
            while current?.next?.value != val {
                current = current?.next
            }
            current?.next = current?.next?.next
            return true
        }

        func next() -> Int {
            var temp = first
            first = first?.next
            return temp?.value ?? 0
        }
    }

    func findTheWinner(_ n: Int, _ k: Int) -> Int {
        var list = List(), temp = -1
        for idx in 1 ... n {
            list.insert(idx)
        }
        while true {
            for _ in 0 ..< k {
                temp = list.next()
            }
            if list.remove(temp) == false {
                break
            }
        }
        return list.next()
    }
}
