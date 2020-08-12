// Problem: https://leetcode.com/problems/squares-of-a-sorted-array/

class Solution { 
    func sortedSquares(_ A: [Int]) -> [Int] {
        var left = 0, right = A.count - 1, index = A.count - 1
        var output = [Int](repeating: 0, count: A.count)
        
        while index >= 0 {
            if abs(A[left]) < abs(A[right]) {
                output[index] = A[right] * A[right]
                right -= 1
            } else {
                output[index] = A[left] * A[left]
                left += 1
            }
            
            index -= 1
        }
        
        return output
    }
}
