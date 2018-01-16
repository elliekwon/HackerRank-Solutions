//
//  Halloween party.swift
//  (https://www.hackerrank.com/challenges/halloween-party/problem)
//
//  Created by Ellie Kwon on 2017. 12. 29..
//

import Foundation

func getMaxPiece(_ k :Int) -> Int {
  var maxNum = 0
  for i in 1..<k {
    maxNum = max(maxNum, i*(k-i))
  }
  return maxNum
}

let N = Int(readLine()!)!
for _ in 0..<N {
  print(getMaxPiece(Int(readLine()!)!))
}
