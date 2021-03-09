// Problem: https://leetcode.com/problems/convert-a-number-to-hexadecimal/

class Solution {
    private func negative(_ binary: inout [Character], negative: Bool) {
        guard negative else { return }
        var carry = true
        for idx in binary.indices {
            binary[idx] = binary[idx] == "1" ? "0" : "1"
        }
        for idx in binary.indices where carry {
            carry = (binary[binary.count-idx-1] == "1")
            binary[binary.count-idx-1] = carry ? "0" : "1"
        }
    }
    private func toBinary(_ num: Int) -> [Character] {
        let negative = (num < 0)
        var output = [Character](repeating: "0", count: 32), num = negative == true ? -num : num, idx = output.count-1
        while num > 0 {
            output[idx] = num % 2 == 1 ? "1" : "0"
            (idx, num) = (idx-1, num/2)
        }
        self.negative(&output, negative: negative)
        return output
    }
    func toHex(_ num: Int) -> String {
        guard num != 0 else { return "0" }
        let num32 = toBinary(num)
        let codes = ["0000","0001","0010","0011","0100","0101","0110","0111","1000","1001","1010","1011","1100","1101","1110","1111"]
        let decoded: [Character] = ["0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f"]
        var converter = [String: Int](), hex = [Character](), idx = 0
        codes.enumerated().forEach { converter[$1] = $0 }
        for pos in 0..<8 {
            let part = String(num32[pos*4..<pos*4+4])
            hex.append(decoded[converter[part]!])
        }
        while idx < hex.count && hex[idx] == "0" {
            idx += 1
        }
        return String(hex[idx..<hex.count])
    }
}
