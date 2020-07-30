// Problem: https://leetcode.com/problems/self-dividing-numbers/

class Solution {
    func selfDividingNumbers(_ left: Int, _ right: Int) -> [Int] {
        var output = [Int]()
        var n = 0
        var k = 0
        var flag = true
        
        for num in left...right {
            n = num
            flag = true
            while n != 0 {
                if n % 10 == 0 {
                    flag = false
                    break
                } else {
                    k = n % 10
                }
                
                if num % k != 0 {
                    flag = false
                    break
                }
                
                n /= 10
            }
            
            if flag == true {
                output.append(num)
            }
        }
        
        return output
    }
}
