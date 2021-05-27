// Problem: https://leetcode.com/problems/image-smoother/

class Solution {
    func imageSmoother(_ M: [[Int]]) -> [[Int]] {
        var output = M
        for index in M.indices {
            for jndex in M[0].indices {
                let vstarter = index - 1 >= 0 ? index - 1 : 0
                let vender = index + 1 < M.count ? index + 1 : M.count - 1
                let hstarter = jndex - 1 >= 0 ? jndex - 1 : 0
                let hender = jndex + 1 < M[0].count ? jndex + 1 : M[0].count - 1
                var sum = 0, count = 0
                for kndex in vstarter...vender {
                    for lndex in hstarter...hender {
                        sum += M[kndex][lndex]
                        count += 1
                    }
                }
                output[index][jndex] = sum / count
            }
        }
        return output
    }
}
