// Problem: https://leetcode.com/problems/find-winner-on-a-tic-tac-toe-game/

class Solution {
    func tictactoe(_ moves: [[Int]]) -> String {
        var board = [[Character]](repeating: [Character](repeating: " ", count: 3), count: 3), switcher = true, winner = ""
        for move in moves {
            board[move[0]][move[1]] = switcher ? "X" : "O"
            winner = winnerDecision(board, winner)
            if winner != "Pending" {
                return winner
            }
            switcher = !switcher    
        }
        return winner
    }
    func winnerDecision(_ board: [[Character]], _ winner: String) -> String {
        for idx in 0..<3 {
            if board[idx][0] != " " && board[idx][0] == board[idx][1] && board[idx][1] == board[idx][2] {
                return board[idx][0] == "X" ? "A" : "B"
            }
            if board[0][idx] != " " && board[0][idx] == board[1][idx] && board[1][idx] == board[2][idx] {
                return board[0][idx] == "X" ? "A" : "B"
            } 
        }
        if board[0][0] != " " && board[0][0] == board[1][1] && board[1][1] == board[2][2] {
            return board[0][0] == "X" ? "A" : "B"
        } else if board[2][0] != " " && board[2][0] == board[1][1] && board[1][1] == board[0][2] {
            return board[2][0] == "X" ? "A" : "B"
        }
        var flag = false
        for idx in board.indices {
            for jdx in board[idx].indices {
                if board[idx][jdx] == " " {
                    return "Pending"
                }
            }
        }
        return "Draw"
    }
}
