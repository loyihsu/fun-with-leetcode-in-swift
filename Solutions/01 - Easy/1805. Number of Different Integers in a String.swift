// Problem: https://leetcode.com/problems/number-of-different-integers-in-a-string/

class Solution {
    func insert(item: inout String, to set: inout Set<String>) {
        guard !item.isEmpty else { return } 
        while item.first == "0" && item.count > 1 {
            item.removeFirst()
        }
        set.insert(item)
        item = ""
    }
    func numDifferentIntegers(_ word: String) -> Int {
        let numbers = Set("1234567890")
        var temp = "", unique: Set<String> = []
        for char in word {
            if numbers.contains(char) {
                temp.append(char)
            } else {
                insert(item: &temp, to: &unique)
            }
        }
        insert(item: &temp, to: &unique)
        return unique.count
    }
}
