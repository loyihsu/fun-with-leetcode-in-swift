// Problem: https://leetcode.com/problems/roman-to-integer/

class Solution {
    func setupDictionary(_ dic: inout [Character : Int]) {
        dic["E"] = 0        // Empty
        dic["I"] = 1
        dic["V"] = 5
        dic["X"] = 10
        dic["L"] = 50
        dic["C"] = 100
        dic["D"] = 500
        dic["M"] = 1000
    }
    
    func romanToInt(_ s: String) -> Int {
        var dictionary = [Character : Int]()
        setupDictionary(&dictionary)
        
        var output = 0
        var prev: Character = "E"
        
        for char in s {
            if let ch = dictionary[char], let pr = dictionary[prev] {
                if ((char == "V" || char == "X") && prev == "I")
                || ((char == "L" || char == "C") && prev == "X")
                || ((char == "D" || char == "M") && prev == "C") {
                    output = output + ch - pr * 2
                } else {
                    output += ch
                }
            }
            
            prev = char
        }
        
        return output
    }
}
