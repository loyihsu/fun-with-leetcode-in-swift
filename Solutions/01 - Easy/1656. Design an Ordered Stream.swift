// Problem: https://leetcode.com/problems/design-an-ordered-stream/

class OrderedStream {
    var list: [String?]
    var ptr = 0
    
    init(_ n: Int) {
        list = [String?](repeating: nil, count: n)
    }
    
    func insert(_ id: Int, _ value: String) -> [String] {
        list[id-1] = value
        var output = [String]()
        while ptr < list.count, let item = list[ptr] {
            output.append(item)
            ptr += 1
        }
        return output
    }
}
