// Problem: https://leetcode.com/problems/build-an-array-with-stack-operations/

class Solution {
    func buildArray(_ target: [Int], _ n: Int) -> [String] {
        var tar = target, output = [String]()
        for number in 1 ... n where tar.isEmpty == false {
            output.append("Push")
            if tar.first == number {
                tar.remove(at: 0)
            } else {
                output.append("Pop")
            }
        }
        return output
    }
}
