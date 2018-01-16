//
//  Maximizing XOR.swift
//  (https://www.hackerrank.com/challenges/maximizing-xor/problem)
//
//  Created by Ellie Kwon on 2018. 1. 2..
//

import Foundation

let L = Int(readLine()!)!
let R = Int(readLine()!)!

let xored = L^R
if L == R {
  print(0)
} else {
  let binary = String(xored, radix: 2)
  let result = (1 << binary.count) - 1
  print(result)
}
