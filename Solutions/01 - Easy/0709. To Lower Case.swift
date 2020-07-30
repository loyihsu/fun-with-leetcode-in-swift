// Problem: https://leetcode.com/problems/to-lower-case/

class Solution {
    func toLowerCase(_ str: String) -> String {
        var output = ""
        let scaler = String("AaZ").unicodeScalars
        
        let bigAVal = scaler[scaler.startIndex].value
        let smallAVal = scaler[scaler.index(after: scaler.startIndex)].value
        let bigZVal = scaler[scaler.index(scaler.startIndex, offsetBy: 2)].value
        
        let shift = smallAVal - bigAVal
        
        for s in str.unicodeScalars {
            var value = s.value
            if value >= bigAVal && value <= bigZVal {
                value += shift
            }
            
            output.append(Character(UnicodeScalar(value)!))
        }
        
        return output
    }
}
