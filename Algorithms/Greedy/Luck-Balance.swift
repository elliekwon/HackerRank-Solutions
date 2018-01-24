//
//  Luck Balance.swift
//  (https://www.hackerrank.com/challenges/luck-balance/problem)
//
//  Created by Ellie Kwon on 2017. 12. 21..
//

import Foundation

let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let n = arr.first!
let k : Int = arr.last!
var contents : [Int] = []
var importants : [Int] = []

for _ in 0..<n {
  let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
  contents.append(arr.first!)
  if arr.last == 1 {
    importants.append(arr.first!)
  }
}

var sumOfContests = contents.reduce(0, +)

if importants.count > k {
  importants = importants.sorted()
  for i in 0..<importants.count-k {
    sumOfContests -= (importants[i]*2)
  }
}

print(sumOfContests)
