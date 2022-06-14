// Problem: https://leetcode.com/problems/fizz-buzz/

class Solution {
    func fizzBuzz(_ n: Int) -> [String] {
        var output = [String](repeating: "", count: n)
        for number in 1 ... n {
            if number % 3 == 0, number % 5 == 0 {
                output[number - 1] = "FizzBuzz"
            } else if number % 3 == 0 {
                output[number - 1] = "Fizz"
            } else if number % 5 == 0 {
                output[number - 1] = "Buzz"
            } else {
                output[number - 1] = "\(number)"
            }
        }
        return output
    }
}
