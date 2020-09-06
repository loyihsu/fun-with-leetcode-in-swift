// Problem: https://leetcode.com/problems/roman-to-integer/

class Solution {
    func setupDictionary() -> [Character: Int] {
        var dic = [Character: Int]()
        let elements = Array<Character>("EIVXLCDM")
        let numbers = [0, 1, 5, 10, 50, 100, 500, 1000]
        for index in elements.indices {
            dic[elements[index]] = numbers[index]
        }
        return dic
    }

    func romanToInt(_ s: String) -> Int {
        var dictionary = setupDictionary()
        var output = 0, prev: Character = "E"
        
        for char in s {
            if let currentValue = dictionary[char], let prevValue = dictionary[prev] {
                if ((char == "V" || char == "X") && prev == "I")
                || ((char == "L" || char == "C") && prev == "X")
                || ((char == "D" || char == "M") && prev == "C") {
                    output = output + currentValue - prevValue * 2
                } else {
                    output += currentValue
                }
            }
            prev = char
        }
        return output
    }
}
