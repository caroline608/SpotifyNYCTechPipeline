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
    
    var combos = [[Int]]()
    
    for i in 0..<denomination.count / 2 + 1 {
        let temp = amount - denomination[i]
        if temp > 0 {
            //print(denomination[i], temp)
            combos.append([denomination[i], temp])
        }
    }

    for i in 0..<denomination.count / 2 {
        for j in i + 1..<denomination.count {
            let temp = amount - denomination[i] - denomination[j]
            if temp > 0 {
                //print(denomination[i], denomination[j], temp)
                combos.append([denomination[i],denomination[j], temp])
            }
        }
    }
    
    
    for i in 0..<denomination.count   {
        for j in i..<denomination.count   {
            for k in j..<denomination.count  {
                let temp = amount - denomination[i] - denomination[j] - denomination[k]
                if temp > 0 {
                    //print(denomination[i],denomination[j],denomination[k], temp)
                    
                    combos.append([denomination[i],denomination[j],denomination[k], temp])
                }
            }
        }
        
    }
//    combos.forEach{print($0.reduce(0,+),"=",$0)}
    
    return combos.count
}

changePossibities(amount: 4, denomination: [1,2,3])

