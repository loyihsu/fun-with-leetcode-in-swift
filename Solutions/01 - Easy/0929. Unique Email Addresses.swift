// Problem: https://leetcode.com/problems/unique-email-addresses/

class Solution {
    func numUniqueEmails(_ emails: [String]) -> Int {
        var output = [String: Bool]()
        for email in emails {
            var atSeparator = email.components(separatedBy: "@")
            atSeparator[0] = atSeparator[0].components(separatedBy: "+")[0]
            atSeparator[0] = atSeparator[0].filter { $0 != "." }
            output[atSeparator.joined(separator: "@")] = true
        }
        return output.keys.count
    }
}
