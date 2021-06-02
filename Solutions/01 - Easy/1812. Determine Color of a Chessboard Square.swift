// Problem: https://leetcode.com/problems/determine-color-of-a-chessboard-square/

class Solution {
    func squareIsWhite(_ coordinates: String) -> Bool {
        let oddblack = Set("aceg")
        if let last = coordinates.last,
           let first = coordinates.first,
           let int = Int("\(last)") {
               if oddblack.contains(first) {
                   return int % 2 == 0
               } else {
                   return int % 2 == 1
               }
        }
        return false
    }
}
