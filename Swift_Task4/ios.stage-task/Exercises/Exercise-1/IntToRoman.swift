import Foundation

public extension Int {
    
        var roman: String? {
        var mySelf = self
        if mySelf <= 0 && mySelf > 3999 {
        return nil
        }
        var nameString = ""
        let listInt = [100: "C", 400: "CD", 500: "D", 900: "CM", 1000: "M", 10: "X", 40: "XL", 50: "L", 90: "XC", 1: "I", 4: "IV", 5: "V", 9: "IX"].sorted(by: >)
        for i in listInt{
            while mySelf >= i.0 {
                nameString += i.1
                mySelf -= i.0
            }
        }
        
        if nameString == "" {
            return nil
        }
        return nameString
    }

}
