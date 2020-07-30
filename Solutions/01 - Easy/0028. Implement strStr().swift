// Problem: https://leetcode.com/problems/implement-strstr/

class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        guard needle.isEmpty == false else { return 0 }
        guard haystack != needle else { return 0 }
        guard haystack.count >= needle.count else { return -1 }
        guard haystack.count != needle.count || haystack == needle else { return -1 }
        
        var charMap = [Character : [Int]]()

        for i in 0..<haystack.count {
            let id = haystack.index(haystack.startIndex, offsetBy: i)
            
            if charMap[haystack[id]] == nil {
                charMap[haystack[id]] = [i]
            } else {
                charMap[haystack[id]]!.append(i)
            }
        }
        if let list = charMap[needle[needle.startIndex]] {
            for l in list {
                if l + needle.count - 1 < haystack.count {
                    var flag = false
                    for i in 0..<needle.count {
                        let hid = haystack.index(haystack.startIndex, offsetBy: l+i)
                        let nid = needle.index(needle.startIndex, offsetBy: i)
                        
                        if haystack[hid] != needle[nid] {
                            flag = true
                            break
                        }
                    }
                    if flag == false {
                        return l
                    }
                }
            }
        }

        return -1
    }
}
