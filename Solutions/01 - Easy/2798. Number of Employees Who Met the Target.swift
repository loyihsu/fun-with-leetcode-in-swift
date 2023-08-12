// Problem: https://leetcode.com/problems/number-of-employees-who-met-the-target/

class Solution {
    func numberOfEmployeesWhoMetTarget(_ hours: [Int], _ target: Int) -> Int {
        hours.filter { $0 >= target }.count
    }
}
