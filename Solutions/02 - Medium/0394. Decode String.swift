// Problem: https://leetcode.com/problems/decode-string/

class Solution {
    func decodeString(_ s: String) -> String {
        var numberBuffer = ""
        var contentBuffer = ""
        var flag = 0
        var times = 1
        var output = ""
        for char in s {
            if char == "[" {
                flag += 1
                if flag == 1 {
                    times = Int(numberBuffer)!
                    numberBuffer = ""
                } else {
                    contentBuffer.append(char)
                }
            } else if char == "]" {
                flag -= 1
                if flag == 0 {
                    let decodedBuffer = decodeString(contentBuffer)
                    output.append(String(repeating: decodedBuffer, count: times))
                    contentBuffer = ""
                } else {
                    contentBuffer.append(char)
                }
            } else if flag != 0 {
                contentBuffer.append(char)
            } else if char.isNumber {
                numberBuffer.append(char)
            } else {
                output.append(char)
            }
        }
        return output
    }
}
