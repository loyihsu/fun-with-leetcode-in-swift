// Problem: https://leetcode.com/problems/unique-morse-code-words/

class Solution {
    func uniqueMorseRepresentations(_ words: [String]) -> Int {
        var output = Set<String>()
        let characters = Array("abcdefghijklmnopqrstuvwxyz"), morse = [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]
        var map = [Character: String](), temp = ""
        for i in 0..<26 {
            map[characters[i]] = morse[i]
        }
        for word in words {
            temp = ""
            for c in word {
                temp += map[c]!
            }
            output.insert(temp)
        }
        return output.count
    }
}
