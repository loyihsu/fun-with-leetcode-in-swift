// Problem: https://leetcode.com/problems/01-matrix/

class Solution {
    func validate(_ cur: Int, _ max: Int) -> Bool {
        return cur >= 0 && cur < max
    }

    func bfs_closest(_ matrix: [[Int]], _ i: Int, _ j: Int) -> Int {
        var queue: [(Int, Int, Int)] = [(i, j, 0)]

        let dirs: [(Int, Int)] = [(0, -1), (0, 1), (-1, 0), (1, 0)]
        let x_max = matrix.count, y_max = matrix[0].count

        while queue.isEmpty == false {
            let index = queue.removeFirst()
            if matrix[index.0][index.1] == 0 {
                return index.2
            } else {
                for (x, y) in dirs {
                    if validate(index.0+x, x_max) && validate(index.1+y, y_max) {
                        queue.append((index.0+x, index.1+y, index.2+1))
                    }
                }
            }
        }

        return -1
    }

    func updateMatrix(_ matrix: [[Int]]) -> [[Int]] {
        var output = [[Int]](), temp = [Int]()

        for (i, matriy) in matrix.enumerated() {
            temp = [Int]()
            for (j, val) in matriy.enumerated() {
                if val == 0 { temp.append(0) } else { temp.append(bfs_closest(matrix, i, j)) }
            }
            output.append(temp)
        }

        return output
    }
}
