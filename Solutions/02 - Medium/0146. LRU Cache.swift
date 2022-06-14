// Problem: https://leetcode.com/problems/lru-cache/

class LinkedList {
    var head: ListNode?
    var tail: ListNode?
    var isEmpty: Bool {
        return head == nil
    }
}

class ListNode {
    var val: Int
    var prev: ListNode?
    var next: ListNode?
    init(val: Int, prev: ListNode? = nil, next: ListNode? = nil) {
        self.val = val
        self.next = next
        self.prev = prev
    }
}

class LRUCache {
    let _capacity: Int
    var _cache = [Int: (Int, ListNode)]()
    var _order = LinkedList()
    init(_ capacity: Int) {
        _capacity = capacity
    }

    func get(_ key: Int) -> Int {
        guard let found = _cache[key] else {
            return -1
        }
        moveListnodeToHead(found.1)
        return found.0
    }

    func put(_ key: Int, _ value: Int) {
        if let found = _cache[key] {
            found.1.val = key
            _cache[key] = (value, found.1)
            moveListnodeToHead(found.1)
        } else if _cache.count < _capacity {
            let newNode = ListNode(val: key)
            if _order.isEmpty {
                _order.head = newNode
                _order.tail = newNode
            } else {
                newNode.next = _order.head
                _order.head?.prev = newNode
                _order.head = newNode
            }
            _cache[key] = (value, newNode)
        } else {
            let newNode = ListNode(val: key)
            _cache[_order.tail!.val] = nil
            _order.tail = _order.tail?.prev
            _order.tail?.next = nil
            newNode.next = _order.head
            _order.head?.prev = newNode
            _order.head = newNode
            _cache[key] = (value, newNode)
        }
    }

    private func moveListnodeToHead(_ node: ListNode) {
        guard node.prev != nil else { return }
        if node.next == nil {
            _order.tail?.prev?.next = nil
            _order.tail = _order.tail?.prev
        } else {
            node.prev?.next = node.next
            node.next?.prev = node.prev
        }
        node.prev = nil
        node.next = _order.head
        _order.head?.prev = node
        _order.head = node
    }
}
