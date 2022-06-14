// Problem: https://leetcode.com/problems/integer-to-english-words/

class Solution {
    let converter = [1: "One", 2: "Two", 3: "Three", 4: "Four", 5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine", 10: "Ten",
                     11: "Eleven", 12: "Twelve", 13: "Thirteen", 14: "Fourteen", 15: "Fifteen", 16: "Sixteen", 17: "Seventeen", 18: "Eighteen", 19: "Nineteen",
                     20: "Twenty", 30: "Thirty", 40: "Forty", 50: "Fifty", 60: "Sixty", 70: "Seventy", 80: "Eighty", 90: "Ninety"]
    func chunking(_ num: Int) -> [Int] {
        var num = "\(num)", result = [Int](), temp = ""
        while let last = num.popLast() {
            temp.append(last)
            if temp.count == 3 {
                result.append(Int(String(temp.reversed()))!)
                temp = ""
            }
        }
        if !temp.isEmpty {
            result.append(Int(String(temp.reversed()))!)
        }
        return result
    }

    func numberToWords(_ num: Int) -> String {
        guard num != 0 else { return "Zero" }
        let chunks = chunking(num)
        var result = ""
        var level = ["Billion", "Million", "Thousand", ""]
        for var chunk in chunks {
            var generated = converter[chunk] ?? ""
            let currentLevel = level.popLast()!
            if chunk != 0 {
                if generated == "" {
                    if chunk >= 100 {
                        let first = chunk / 100
                        generated += "\(converter[first]!) Hundred"
                        chunk = chunk % 100
                    }
                    if let routing = converter[chunk] {
                        generated += " \(routing)"
                    } else {
                        let first = (chunk / 10) * 10, last = chunk % 10
                        if let first = converter[first], let last = converter[last] {
                            generated += (!generated.isEmpty ? " " : "") + "\(first) \(last)"
                        } else if let first = converter[first] {
                            generated += (!generated.isEmpty ? " " : "") + "\(first)"
                        } else if let last = converter[last] {
                            generated += (!generated.isEmpty ? " " : "") + "\(last)"
                        }
                    }
                }
                result = generated + (currentLevel != "" ? " " + currentLevel : "") + (result != "" ? " " + result : "")
            }
        }
        return result
    }
}
