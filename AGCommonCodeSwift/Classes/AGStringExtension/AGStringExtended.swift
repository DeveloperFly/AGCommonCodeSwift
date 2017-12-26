//
//  AGStringExtended.swift
//  AGCommonCodeSwift
//
//  Created by Aman Gupta on 26/12/17.
//

import UIKit

public extension String {
    // MARK: - Public variables
    public var first: String {
        return String(prefix(1))
    }
    
    public var last: String {
        return String(suffix(1))
    }
    
    public var uppercaseFirstChar: String {
        return first.uppercased() + String(dropFirst())
    }
    
    public var vowels: [String] {
        get {
            return ["a", "e", "i", "o", "u"]
        }
    }
    
    public var consonants: [String] {
        get {
            return ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "z"]
        }
    }
    
    public var length: Int {
        get {
            return self.stringByTrimmingWhiteSpaceAndNewLine().count
        }
    }
    
    //To check whether email is valid or not
    public func isEmail() -> Bool {
        if self.isEmptyString() {
            return false
        }
        let emailRegex = "[A-Z0-9a-z\\._%+-]+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2,4}" as String
        let emailText = NSPredicate(format: "SELF MATCHES %@",emailRegex)
        let isValid  = emailText.evaluate(with: self) as Bool
        return isValid
    }
    
    //To check whether URL is valid
    public func isURL() -> Bool {
        let urlRegex = "(http|https)://((\\w)*|([0-9]*)|([-|_])*)+([\\.|/]((\\w)*|([0-9]*)|([-|_])*))+" as String
        let urlText = NSPredicate(format: "SELF MATCHES %@", urlRegex)
        let isValid = urlText.evaluate(with: self) as Bool
        return isValid
    }
    
    //To check whether image URL is valid
    public func isImageURL() -> Bool {
        if self.isURL() {
            if self.range(of: ".png") != nil || self.range(of: ".jpg") != nil || self.range(of: ".jpeg") != nil {
                return true
            } else {
                return false
            }
        } else {
            return false
        }
    }
    
    //To check whether string is empty
    public func isEmptyString() -> Bool {
        return self.stringByTrimmingWhiteSpace().count == 0 ? true : false
    }
    
    //Get string by removing white space
    public func stringByTrimmingWhiteSpace() -> String {
        return self.trimmingCharacters(in: .whitespaces)
    }
    
    //Get string by removing white space & new line
    public func stringByTrimmingWhiteSpaceAndNewLine() -> String {
        return self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    //Remove substring in string
    mutating public func removeSubString(subString: String) -> String {
        if self.contains(subString) {
            guard let stringRange = self.range(of: subString) else { return self }
            return self.replacingCharacters(in: stringRange, with: "")
        }
        return self
    }
    
    public static func getString(message: Any?) -> String {
        guard let strMessage = message as? String else {
            guard let doubleValue = message as? Double else {
                guard let intValue = message as? Int else {
                    guard let int64Value = message as? Int64 else {
                        return ""
                    }
                    return String(int64Value)
                }
                return String(intValue)
            }
            
            let formatter = NumberFormatter()
            formatter.minimumFractionDigits = 0
            formatter.maximumFractionDigits = 2
            formatter.minimumIntegerDigits = 1
            guard let formattedNumber = formatter.string(from: NSNumber(value: doubleValue)) else {
                return ""
            }
            return formattedNumber
        }
        return strMessage.stringByTrimmingWhiteSpaceAndNewLine()
    }
    
    public func replace(target: String, withString: String) -> String {
        return self.replacingOccurrences(of: target, with: withString)
    }
    
    //Get character array by string
    public func getArrayByString() -> [Character] {
        return Array(self)
    }
    
}

