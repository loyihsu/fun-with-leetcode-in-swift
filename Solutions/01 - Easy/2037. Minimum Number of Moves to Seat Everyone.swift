// Problem: https://leetcode.com/problems/minimum-number-of-moves-to-seat-everyone/

extension Array where Element == Int {
    mutating func popMin() -> Int? {
        guard self.count > 0 else { return nil }
        var (offset, element) = (0, self[0])
        for (index, value) in self.enumerated() where value < element {
            (offset, element) = (index, value)
        }
        self.remove(at: offset)
        return element
    }
}
class Solution {
    func minMovesToSeat(_ seats: [Int], _ students: [Int]) -> Int {
        var seats = seats, students = students, output = 0
        while let student = students.popMin(), let seat = seats.popMin() {
            output += abs(student - seat)
        }
        return output
    }
}
