// Problem: https://leetcode.com/problems/add-to-array-form-of-integer/

class Solution {
    func makeArray(_ K: Int) -> [Int] {
        guard K != 0 else { return [0] }
        var output = [Int](), k = K
        while k > 0 {
            output.append(k % 10)
            k /= 10
        }
        return output.reversed()
    }
    func normalise(_ num: [Int]) -> [Int] {
        var carry = 0, output = num, index = output.count - 1
        while index >= 0 {
            if carry != 0 {
                output[index] += carry
                carry = 0
            }
            if output[index] >= 10 {
                output[index] %= 10
                carry = 1
            }
            index -= 1
        }
        if carry != 0 {
            output.insert(carry, at: 0)
            carry = 0
        }
        return output
    }
    func addToArrayForm(_ A: [Int], _ K: Int) -> [Int] {
        guard A != [0] else { return makeArray(K) }
        let k = makeArray(K)
        var posA = A.count - 1, posK = k.count - 1, output = A
        while posA >= 0 && posK >= 0 {
            output[posA] += k[posK]
            posA -= 1
            posK -= 1
        }
        while posK >= 0 {
            output.insert(k[posK], at: 0)
            posK -= 1
        }
        return normalise(output)
    }
}
