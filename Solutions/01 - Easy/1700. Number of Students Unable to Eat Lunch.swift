// Problem: https://leetcode.com/problems/number-of-students-unable-to-eat-lunch/

class Solution {
    func countStudents(_ students: [Int], _ sandwiches: [Int]) -> Int {
        var stack = sandwiches, queue = students
        while stack.isEmpty == false {
            if queue.contains(stack.first!) == false {
                break
            }
            if queue.first! == stack.first! {
                queue.removeFirst()
                stack.removeFirst()
            } else {
                queue.append(queue.removeFirst())
            }
        }
        return queue.count
    }
}
