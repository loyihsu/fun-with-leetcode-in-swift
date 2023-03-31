// Problem: https://leetcode.com/problems/group-anagrams/

class Solution {
    let aVal = Character("a").asciiValue!
    let emptyMap = [Int](repeating: 0, count: 26)

    func toIndex(_ char: Character) -> Int {
        Int(char.asciiValue! - aVal)
    }

    func generateIndexMap(_ str: String) -> [Int] {
        var output = emptyMap
        str.forEach { output[toIndex($0)] += 1 }
        return output
    }

    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var dic = [[Int]: [String]]()
        var indexMap = emptyMap

        for str in strs {
            indexMap = generateIndexMap(str)

            if var dt = dic[indexMap] {
                dt.append(str)
                dic[indexMap] = dt
            } else {
                dic[indexMap] = [str]
            }
        }

        return Array(dic.values)
    }
}
