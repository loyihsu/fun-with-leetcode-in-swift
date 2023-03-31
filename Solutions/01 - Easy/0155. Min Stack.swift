// Problem: https://leetcode.com/problems/min-stack/

class MinStack {
    var min = Int.max
    var array = [Int]()

    /** initialize your data structure here. */
    init() {}

    func push(_ x: Int) {
        array.append(x)
        min = x < min ? x : min
    }

    func pop() {
        let last = array.popLast()!
        if min == last {
            min = Int.max
            array.forEach { min = $0 < min ? $0 : min }
        }
    }

    func top() -> Int {
        array.last!
    }

    func getMin() -> Int {
        min
    }
}
