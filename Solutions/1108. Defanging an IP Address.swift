// Problem: https://leetcode.com/problems/defanging-an-ip-address/

class Solution {
    func defangIPaddr(_ address: String) -> String {
        return address.components(separatedBy: ".").joined(separator: "[.]")
    }
}
