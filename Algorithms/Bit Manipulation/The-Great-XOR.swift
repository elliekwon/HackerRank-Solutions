//
//  The Great XOR.swift
//  (https://www.hackerrank.com/challenges/the-great-xor/problem)
//
//  Created by Ellie Kwon on 2018. 1. 8..
//

import Foundation

func getNumberOfGreatXOR (_ x :Int) -> Int {
  var x = x
  var result : Int = 0
  var bitPos : Int = 0

  while x > 0 {
    if x&1 == 0 {
      result += 1<<bitPos
    }
    bitPos += 1
    x = x >> 1
  }

  return result
}

let n = Int(readLine()!)!
var arr : [Int] = []
for _ in 0..<n {
  arr.append(getNumberOfGreatXOR(Int(readLine()!)!))
}

print(arr.map({"\($0)"}).joined(separator: "\n"))
