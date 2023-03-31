// Problem: https://leetcode.com/problems/iterator-for-combination/

class CombinationIterator {
    var storage = [String]()
    init(_ characters: String, _ combinationLength: Int) {
        preprocessing("", characters, length: combinationLength)
        storage.sort()
    }

    private func preprocessing(_ current: String, _ resting: String, length: Int) {
        if current.count == length {
            storage.append(current)
        } else if !resting.isEmpty {
            var rest = resting, first = rest.removeFirst()
            preprocessing(current, rest, length: length)
            preprocessing("\(current)\(first)", rest, length: length)
        }
    }

    func next() -> String {
        storage.removeFirst()
    }

    func hasNext() -> Bool {
        !storage.isEmpty
    }
}
