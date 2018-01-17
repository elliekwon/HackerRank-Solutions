//
//  Angry Professor.swift
//  (https://www.hackerrank.com/challenges/angry-professor/problem)
//
//  Created by Ellie Kwon on 2018. 1. 17..
//

import Foundation

for _ in 0..<Int(readLine()!)! {
  let threshold = readLine()!.components(separatedBy: " ").map{ Int($0)! }.last!
  let students = readLine()!.components(separatedBy: " ").map{ Int($0)! }.filter({ $0 <= 0 })
  print(students.count < threshold ? "YES" : "NO")
}
