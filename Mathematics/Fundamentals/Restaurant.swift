//
//  Restaurant.swift
//  (https://www.hackerrank.com/challenges/restaurant/problem)
//
//  Created by Ellie Kwon on 2018. 1. 11..
//

import Foundation

func greatestCommonDivisor(_ a: Int, _ b: Int) -> Int {
  let r = a % b
  if r != 0 {
    return greatestCommonDivisor(b, r)
  } else {
    return b
  }
}

var result : [Int] = []
let t = Int(readLine()!)!
for _ in 0..<t {
  let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
  let gcd = greatestCommonDivisor(arr[0], arr[1])
  result.append((arr[0]/gcd)*(arr[1]/gcd))
}

print(result.map({"\($0)"}).joined(separator: "\n"))
