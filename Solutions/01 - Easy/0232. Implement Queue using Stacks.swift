// Problem: https://leetcode.com/problems/implement-queue-using-stacks/

class MyQueue {
    var left = [Int](), right = [Int]()     // (left-top)[left][right](right-top)
    /** Push element x to the back of queue. */
    func push(_ x: Int) {
        right.append(x)
    }
    /** Removes the element from in front of queue and returns that element. */
    func pop() -> Int {
        if left.isEmpty {
            charge()
        }
        return left.popLast()!
    }
    /** Get the front element. */
    func peek() -> Int {
        if left.isEmpty {
            charge()
        }
        return left.last!
    }
    /** Returns whether the queue is empty. */
    func empty() -> Bool {
        return left.isEmpty && right.isEmpty
    }
    private func charge() {
        while !right.isEmpty {
            left.append(right.popLast()!)
        }
    }
}
