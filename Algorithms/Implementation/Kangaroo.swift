//
//  Kangaroo.swift
//  (https://www.hackerrank.com/challenges/kangaroo/problem))
//
//  Created by Ellie Kwon on 2018. 1. 18..
//

import Foundation

let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
var firstPoint  = arr[0]
let firstJump   = arr[1]
var secondPoint = arr[2]
let secondJump  = arr[3]

if firstJump > secondJump && (secondPoint-firstPoint)%(firstJump-secondJump) == 0{
  print("YES")
} else {
  print("NO")
}
