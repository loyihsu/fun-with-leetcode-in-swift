// Problem: https://leetcode.com/problems/design-a-stack-with-increment-operation/

class CustomStack {
    var list: [Int]
    var pos: Int = 0

    init(_ maxSize: Int) {
        list = [Int](repeating: 0, count: maxSize)
    }

    func push(_ x: Int) {
        guard pos < list.count else { return }
        list[pos] = x
        pos += 1
    }

    func pop() -> Int {
        guard pos > 0 else { return -1 }
        pos -= 1
        return list[pos]
    }

    func increment(_ k: Int, _ val: Int) {
        var limit = k < pos ? k : pos
        for index in 0..<limit {
            list[index] += val
        }
    }
}
