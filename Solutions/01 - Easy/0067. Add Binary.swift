// Problem: https://leetcode.com/problems/add-binary/

class Solution {
    func adder(_ longer: String, _ shorter: String) -> String {
        var output = ""
        var shorterIndex = shorter.index(before: shorter.endIndex)
        var longerIndex = longer.index(before: longer.endIndex)
        var shorterEnds = false, longerEnds = false, loop = true, carry = false
        while !longerEnds {
            if shorterEnds == false {
                if shorter[shorterIndex] == longer[longerIndex] {
                    carry == true ? output.append("1") : output.append("0")
                    carry = longer[longerIndex] == "1"
                } else {
                    carry == true ? output.append("0") : output.append("1")
                }

                if shorterIndex > shorter.startIndex {
                    shorterIndex = shorter.index(before: shorterIndex)
                } else if shorterIndex == shorter.startIndex, shorterEnds == false {
                    shorterEnds = true
                }
            } else {
                if longer[longerIndex] == "1" {
                    carry == true ? output.append("0") : output.append("1")
                } else {
                    carry == true ? output.append("1") : output.append("0")
                    carry = false
                }
            }
            if longerIndex > longer.startIndex {
                longerIndex = longer.index(before: longerIndex)
            } else if longerIndex == longer.startIndex, longerEnds == false {
                longerEnds = true
            }
        }
        if carry == true {
            output.append("1")
        }
        return String(output.reversed())
    }

    func addBinary(_ a: String, _ b: String) -> String {
        return adder(a.count > b.count ? a : b, a.count > b.count ? b : a)
    }
}
