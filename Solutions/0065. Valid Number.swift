// Problem: https://leetcode.com/problems/valid-number/

import Foundation

class Solution {
    func checkValue(_ s: String, _ point: Bool) -> Bool {
        // Deal with empty strings
        if s.isEmpty { return false }
        
        let signs = CharacterSet.init(charactersIn: "+-")

        let fp = s.components(separatedBy: ".")
        
        if fp.count > 1 {
            if point == false || fp.count > 2 {
                return false
            } else if fp.count == 2 {
                if let first = fp.first, let last = fp.last {
                    if first.isEmpty == true && last.isEmpty == true {
                        // The two sides of the `.` cannot be both empty (`"."`)
                        return false
                    } else {
                        if first.isEmpty == false {
                            let f = first.components(separatedBy: signs)
                            if f.count > 1 {
                                if let ffirst = f.first, let flast = f.last {
                                    if ffirst.isEmpty == true && flast.isEmpty == true && last.isEmpty == true {
                                        // `"-."` is not valid.
                                        return false
                                    }
                                    if ffirst.isEmpty == false {
                                        //`"3-."` is not valid
                                        return false
                                    }
                                }
                            }
                        }
                        if last.isEmpty == false {
                            // No more signs below floating point.
                            if last.components(separatedBy: signs).count > 1 { 
                                return false
                            }
                        }
                    }
                }
            }
        }
        
        let sg = s.components(separatedBy: signs)
        
        if sg.count > 2 {
            // There shouldn't be more than 2 signs.
            return false
        } else if sg.count == 2 {
            if let first = sg.first {
                // Nothing should go before any sign. (`"3+"` is not valid)
                if first.isEmpty == false { return false }
            }
            
            if let last = sg.last {
                // Something should go after any sign. (`"+"` is not valid)
                if last.isEmpty == true { return false }
            }
        }
        
        return true
    }
    
    func isNumber(_ s: String) -> Bool {
        // Deal with spaces
        var str = ""
        
        let spaced = s.components(separatedBy: " ").filter { $0.isEmpty == false }
        if spaced.count >= 2 { return false }
        else if spaced.count == 0 { return false }
        else if spaced.count == 1 {
            if let first = spaced.first {
                if first.isEmpty == true { return false }
                else { str = first }
            }
        }
        
        // Check all accptable string characters
        let letters = CharacterSet.init(charactersIn: "0123456789e+-.").inverted
        if str.components(separatedBy: letters).count > 1 { return false }
        
        // Divide into cases with e
        let strings = str.components(separatedBy: "e")
        if strings.count == 1 {
            if let first = strings.first { return checkValue(first, true) }
        } else if strings.count == 2 {
            if let first = strings.first {
                if checkValue(first, true) == false { return false }
            }
            if let last = strings.last { return checkValue(last, false) }
        } else {
            return false
        }
        
        return true
    }
}
