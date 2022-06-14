// Problem: https://leetcode.com/problems/unique-email-addresses/

class Solution {
    func parse(_ str: String, separator: Character) -> [String] {
        var output: [String] = [], temp = ""
        for char in str {
            if char != separator {
                temp.append(char)
            } else {
                output.append(temp)
                temp = ""
            }
        }
        output.append(temp)
        return output
    }

    func numUniqueEmails(_ emails: [String]) -> Int {
        var output = Set<String>()
        for email in emails {
            var parsed = parse(email, separator: "@")
            parsed[0] = parse(parsed[0], separator: "+")[0]
            parsed[0] = parsed[0].filter { $0 != "." }
            output.insert(parsed[0] + "@" + parsed[1])
        }
        return output.count
    }
}
