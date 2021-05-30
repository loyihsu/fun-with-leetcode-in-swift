// Problem: https://leetcode.com/problems/implement-stack-using-queues/

class MyStack {
    var queue = [Int]()
    /** Push element x onto stack. */
    func push(_ element: Int) {
        queue.append(element)
    }
    /** Removes the element on top of the stack and returns that element. */
    func pop() -> Int {
        var temp = [Int](), output = 0
        while let first = queue.first {
            queue.removeFirst()
            if queue.isEmpty {
                output = first
            } else {
                temp.append(first)
            }
        }
        while let first = temp.first {
            temp.removeFirst()
            queue.append(first)
        }
        return output
    }
    /** Get the top element. */
    func top() -> Int {
        var temp = [Int](), output = 0
        while let first = queue.first {
            queue.removeFirst()
            if queue.isEmpty {
                output = first
            }
            temp.append(first)
        }
        while let first = temp.first {
            temp.removeFirst()
            queue.append(first)
        }
        return output
    }
    /** Returns whether the stack is empty. */
    func empty() -> Bool {
        queue.isEmpty
    }
}
