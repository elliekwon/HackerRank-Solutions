//
//  Birthday Cake Candles.swift
//  (https://www.hackerrank.com/challenges/birthday-cake-candles/problem)
//
//  Created by Ellie Kwon on 2018. 1. 16..
//

import Foundation

let n = readLine()
let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }.sorted()

print(arr.filter({$0==arr.last!}).count)
