// Problem: https://leetcode.com/problems/implement-strstr/

class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        guard needle.isEmpty == false else { return 0 }
        guard haystack != needle else { return 0 }
        guard haystack.count >= needle.count else { return -1 }
        guard haystack.count != needle.count || haystack == needle else { return -1 }
        let stack = [Character](haystack), need = [Character](needle)
        var charMap = [Character: [Int]]()
        for index in 0..<haystack.count {
            charMap[stack[index], default: []].append(index)
        }
        if let list = charMap[needle[needle.startIndex]] {
            for item in list where item + needle.count - 1 < haystack.count  {
                var flag = false
                for index in 0..<needle.count where stack[item+index] != need[index] {
                    flag = true
                    break
                }
                if flag == false {
                    return item
                }
            }
        }
        return -1
    }
}
