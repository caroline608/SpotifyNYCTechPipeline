//: Playground - noun: a place where people can play

import UIKit

//Question 2 -- decodeString(s): Given an encoded string, return its corresponding decoded string.
//
//The encoding rule is: k[encoded_string], where the encoded_string inside the square brackets is repeated exactly k times. Note: k is guaranteed to be a positive integer.
//
//For s = "4[ab]", the output should be decodeString(s) = "abababab"
//For s = "2[b3[a]]", the output should be decodeString(s) = "baaabaaa"

func decodeString(encoded: String)-> String {
    var newStr = ""
    
    var encoded = Array(encoded)
    
    if let number = Int(String(encoded.first!)) {
        for _ in 0..<number {
            for j in 1..<encoded.count {
                if encoded[j] == "[" || encoded[j] == "]" {
                    continue
                }
                if let _ = Int(String(encoded[j])) {
                    newStr += decodeString(encoded: encoded.map{String($0)}[j...].joined())
                    break
                }
                newStr += String(encoded[j])
            }
        }
    }
    return newStr
}

decodeString(encoded: "2[b3[a]]")

