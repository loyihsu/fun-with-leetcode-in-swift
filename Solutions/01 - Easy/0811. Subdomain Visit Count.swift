// Problem: https://leetcode.com/problems/subdomain-visit-count/

class Solution {
    func subdomainVisits(_ cpdomains: [String]) -> [String] {
        var counter = [String: Int](), output = [String]()
        for domain in cpdomains {
            var countSplit = domain.components(separatedBy: .whitespaces)
            let count = Int(countSplit.remove(at: 0))!
            let dotSplit = countSplit.popLast()!.components(separatedBy: ".").reversed()
            var temp = ""
            for value in dotSplit {
                if temp.isEmpty { temp = value } else { temp = "\(value).\(temp)" }
                counter[temp] = (counter[temp] ?? 0) + count
            }
        }
        counter.forEach { output.append("\($1) \($0)") }
        return output
    }
}
