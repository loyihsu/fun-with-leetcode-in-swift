// Problem: https://leetcode.com/problems/implement-queue-using-stacks/

class ListNode {
    var value: Int
    var next: ListNode?
    init(_ value: Int, next: ListNode? = nil) {
        self.value = value
        self.next = next
    }
}

class LinkedStack {
    var top: ListNode?
    func push(_ val: Int) {
        let newNode = ListNode(val)
        if top != nil {
            newNode.next = top
        }
        top = newNode
    }

    func pop() -> Int {
        let val = top!.value
        top = top?.next
        return val
    }

    func peek() -> Int {
        return top!.value
    }

    var isEmpty: Bool {
        return top == nil
    }
}

class MyQueue {
    var left = LinkedStack(), right = LinkedStack() // (left-top)[left][right](right-top)
    /** Push element x to the back of queue. */
    func push(_ x: Int) {
        right.push(x)
    }

    /** Removes the element from in front of queue and returns that element. */
    func pop() -> Int {
        if left.isEmpty {
            charge()
        }
        return left.pop()
    }

    /** Get the front element. */
    func peek() -> Int {
        if left.isEmpty {
            charge()
        }
        return left.peek()
    }

    /** Returns whether the queue is empty. */
    func empty() -> Bool {
        return left.isEmpty && right.isEmpty
    }

    private func charge() {
        while !right.isEmpty {
            left.push(right.pop())
        }
    }
}
