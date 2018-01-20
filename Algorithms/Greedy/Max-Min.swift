//
//  Max Min.swift
//  (https://www.hackerrank.com/challenges/angry-children/problem)
//
//  Created by Ellie Kwon on 2017. 12. 28..
//

import Foundation

let N = Int(readLine()!)!
let K = Int(readLine()!)!
var arr : [Int] = []

for _ in 0..<N {
  arr.append(Int(readLine()!)!)
}

arr = arr.sorted()

var output = Int.max
for i in 0...N-K {
  let unfairness = arr[i+K-1]-arr[i]
  output = min(output, unfairness)
}

print(output)
