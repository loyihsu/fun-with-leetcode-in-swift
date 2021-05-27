// Problem: https://leetcode.com/problems/minimum-changes-to-make-alternating-binary-string/

class Solution {
    func minOperations(_ s: String) -> Int {
        var counterA = 0, counterB = 0
        var signalA = false, signalB = true

        for item in s {
            if item == "1" {
                if signalA == false {
                    counterA += 1
                }
                if signalB == false {
                    counterB += 1
                }
            } else {
                if signalA == true {
                    counterA += 1
                }
                if signalB == true {
                    counterB += 1
                }
            }
            signalA = !signalA
            signalB = !signalB
        }
        return counterA > counterB ? counterB : counterA
    }
}
