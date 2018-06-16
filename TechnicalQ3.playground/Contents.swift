//: Playground - noun: a place where people can play

import UIKit


//Question 3 -- changePossibilities(amount,amount): Your quirky boss collects rare, old coins. They found out you're a programmer and asked you to solve something they've been wondering for a long time.
//
//Write a function that, given an amount of money and an array of coin denominations, computes the number of ways to make the amount of money with coins of the available denominations.
//
//Example: for amount=4 (4¢) and denominations=[1,2,3] (1¢, 2¢ and 3¢), your program would output 4—the number of ways to make 4¢ with those denominations:
//
//    1¢, 1¢, 1¢, 1¢
//    1¢, 1¢, 2¢
//    1¢, 3¢
//    2¢, 2¢



func changePossibities(amount: Int, denomination: [Int]) -> Int {
    var lengthOfArr = denomination.count
    var table: Array<Int> = Array(repeating: 0, count: amount + 1)
    
    //    base case
    table[0] = 1
    
    
    for i in 0..<lengthOfArr {
        for j in denomination[i]...amount {
            table[j] += table[j - denomination[i]]
            print(table)
        }
        print("**")
    }
    print(table)
    return table[amount]
}

changePossibities(amount: 6, denomination: [1,2,3])
