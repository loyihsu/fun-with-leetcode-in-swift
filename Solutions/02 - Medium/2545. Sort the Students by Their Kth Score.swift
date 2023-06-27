// Problem: https://leetcode.com/problems/sort-the-students-by-their-kth-score/description/

class Solution {
    func sortTheStudents(_ score: [[Int]], _ k: Int) -> [[Int]] {
        score.sorted(by: { $0[k] > $1[k] })
    }
}
