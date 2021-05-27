// Problem: https://leetcode.com/problems/battleships-in-a-board/

class Solution {
    func countBattleships(_ board: [[Character]]) -> Int {
        var count = 0
        for index_i in board.indices {
            for index_j in board[index_i].indices where board[index_i][index_j] == "X" {
                let x = (index_i < 1 || board[index_i-1][index_j] != "X")
                
                if  && (index_j < 1 || board[index_i][index_j-1] != "X") {
                    count += 1
                }
            }
        }
        return count
    }
}
