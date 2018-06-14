//: Playground - noun: a place where people can play

import UIKit

//Question 1 -- sortByStrings(s,t): Sort the letters in the string s by the order they occur in the string t. You can assume t will not have repetitive characters. For s = "weather" and t = "therapyw", the output should be sortByString(s, t) = "theeraw". For s = "good" and t = "odg", the output should be sortByString(s, t) = "oodg".

func sortByStrings(s: String, t: String) -> String{
    var newString = ""
    
    var arrayOfStringS = Array(s)
    
    for char in t {
        newString += arrayOfStringS.filter{ String($0) == String(char) }
        
    }
    
    return newString
}


var s = "weather"
var t = "therapyw"

sortByStrings(s: s, t: t)



