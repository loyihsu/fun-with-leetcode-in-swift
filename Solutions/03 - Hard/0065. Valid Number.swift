// Problem: https://leetcode.com/problems/valid-number/

class Solution {
    func removeLeadAndEndingSpaces(_ s: String) -> String {
        var before = s.startIndex, after = s.index(before: s.endIndex)
        while s[before] == " " && before < s.index(before: s.endIndex) {
            before = s.index(after: before)
        }
        while s[after] == " " && before <= after && after > s.startIndex {
            after = s.index(before: after)
        }
        return String(s[before...after])
    }
    func checkAllCharactersAre(in set: String, for str: String) -> Bool {
        var dic = [Character: Bool]()
        set.forEach { dic[$0] = true }
        for s in str where dic[s] == nil {
            return false
        }
        return true
    }
    func casesByE(_ str: String) -> [String] {
        var output = [String](), temp = "", last = false
        for (index, s) in str.enumerated() {
            if s != "e" {
                temp.append(s)
            } else {
                output.append(temp)
                temp = ""
                if index == str.count - 1 { last = true }
            }
        }
        if last { output.append(temp) } else if temp.isEmpty == false { output.append(temp) }
        return output
    }
    func checkValidNumber(_ str: String, _ pointCheck: Bool, _ signCheck: Bool) -> Bool {
        if signCheck == true {
            if str.count < 2 { return false }
            if let first = str.first {
                if first != "+" && first != "-" { return false }
            }
        }
        if pointCheck {
            var before = "", after = "", swit = false
            for s in str {
                if s != "." && s != "+" && s != "-" { swit == false ? before.append(s) : after.append(s) }
                swit = s == "." ? true : swit
            }
            if before.isEmpty && after.isEmpty { return false } else { return !before.isEmpty || !after.isEmpty }
        }
        return true
    }
    func checkMaximumElements(_ str: String, _ pointLimit: Int = 1, _ signs: Bool = true) -> Bool {
        guard str.isEmpty == false else { return false }
        let limit = [".": pointLimit, "signs": signs == true ? 1 : 0]
        var count = [".": 0, "signs": 0]
        for s in str {
            let subs = s == "+" || s == "-" ? "signs" : "\(s)"
            if let limit = limit[subs] {
                count[subs]! += 1
                if count[subs]! > limit { return false }
            }
        }
        return checkValidNumber(str, count["."]! > 0, count["signs"]! > 0)
    }
    func isNumber(_ s: String) -> Bool {
        var testcase = removeLeadAndEndingSpaces(s)
        guard testcase.isEmpty == false else { return false }
        guard checkAllCharactersAre(in: "0123456789e+-.", for: testcase) == true else { return false }
        let div = casesByE(testcase)
        if div.count == 1 {
            if let element = div.first {
                return checkMaximumElements(element)
            }
        } else if div.count == 2 {
            if let first = div.first, let last = div.last {
                let decision1 = checkMaximumElements(first)
                let decision2 = checkMaximumElements(last, 0, true)
                if decision1 == decision2 {
                    return decision1
                } else {
                    return false
                }
            }
        }
        return false
    }
}
