//
//  Army Game.swift
//  (https://www.hackerrank.com/challenges/game-with-cells/problem)
//
//  Created by Ellie Kwon on 2018. 1. 5..
//

import Foundation

let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let n = arr[0]
let m = arr[1]

print((n+n%2)*(m+m%2)/4)
