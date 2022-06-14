// Problem: https://leetcode.com/problems/subrectangle-queries/

class SubrectangleQueries {
    init(_ rectangle: [[Int]]) {
        rectangleObject = rectangle
    }

    func updateSubrectangle(_ row1: Int, _ col1: Int, _ row2: Int, _ col2: Int, _ newValue: Int) {
        for i in row1 ... row2 {
            for j in col1 ... col2 {
                rectangleObject[i][j] = newValue
            }
        }
    }

    func getValue(_ row: Int, _ col: Int) -> Int {
        return rectangleObject[row][col]
    }

    var rectangleObject: [[Int]]
}
