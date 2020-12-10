// Problem: https://leetcode.com/problems/long-pressed-name/

class Solution {
    func isLongPressedName(_ name: String, _ typed: String) -> Bool {
        guard name != typed else { return true }
        var nameIdx = name.startIndex, typedIdx = typed.startIndex
        while typedIdx < typed.endIndex {
            if nameIdx == name.endIndex {
                if typed[typedIdx] == name[name.index(before: nameIdx)] {
                    typedIdx = typed.index(after: typedIdx)
                } else {
                    return false
                }
            } else if name[nameIdx] == typed[typedIdx] {
                nameIdx = name.index(after: nameIdx)
                typedIdx = typed.index(after: typedIdx)
            } else {
                if nameIdx != name.startIndex {
                    if name[name.index(before: nameIdx)] == typed[typedIdx] {
                        typedIdx = typed.index(after: typedIdx)
                    } else {
                        return false
                    }
                } else {
                    return false
                }
            }
        }
        return nameIdx == name.endIndex
    }
}
