//
//  Migratory Birds.swift
//  (https://www.hackerrank.com/challenges/migratory-birds/problem)
//
//  Created by Ellie Kwon on 2018. 1. 19..
//

import Foundation

let n = Int(readLine()!)!
let inputArray = readLine()!.components(separatedBy: " ").map{ Int($0)! }
var tempArray = [Int](repeating: 0, count:n)

for i in inputArray {
  tempArray[i] += 1
}

var maxCount = 0
var result = 0
for i in 0..<n {
  if tempArray[i] > maxCount {
    maxCount = tempArray[i]
    result = i
  }
}

print(result)
