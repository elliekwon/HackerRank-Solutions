//
//  Permuting Two Arrays.swift
//  (https://www.hackerrank.com/challenges/two-arrays/problem)
//
//  Created by Ellie Kwon on 2018. 1. 9..
//

import Foundation

var result : [String] = []

let n = Int(readLine()!)!
for _ in 0..<n {
  let k = readLine()!.components(separatedBy: " ").map{ Int($0)! }.last!
  let arrA = readLine()!.components(separatedBy: " ").map{ Int($0)! }.sorted { $0 < $1 }
  let arrB = readLine()!.components(separatedBy: " ").map{ Int($0)! }.sorted { $0 > $1 }

  var isValid = "YES"
  for i in 0..<arrA.count {
    if arrA[i] + arrB[i] < k {
      isValid = "NO"
      break
    }
  }
  result.append(isValid)
}

print(result.joined(separator: "\n"))

