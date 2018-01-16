//
//  Utopian Tree.swift
//  (https://www.hackerrank.com/challenges/utopian-tree/problem)
//
//  Created by Ellie Kwon on 2018. 1. 3..
//

import Foundation

let T = Int(readLine()!)!
var treeHeight = 1

for _ in 0..<T {
  let N = Int(readLine()!)!
  let year = Int(ceil(Double(N)/2.0))
  let half = N%2
  print((1<<((N+half)-year+1))-1-half)
}
