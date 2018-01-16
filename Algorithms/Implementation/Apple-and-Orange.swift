//
//  Apple and Orange.swift
//  (https://www.hackerrank.com/challenges/apple-and-orange/problem)
//
//  Created by Ellie Kwon on 2018. 1. 15..
//

import Foundation

func getFruitCount(_ tree :Int,_ arrOfFruit :[Int],_ rangeOfHouse :[Int]) -> Int {
  return arrOfFruit.filter ({ (v :Int) -> Bool in
    if tree+v >= rangeOfHouse.first! && tree+v <= rangeOfHouse.last! {
      return true
    }
    return false
  }).count
}

let house = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let trees = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let appleTree = trees.first!
let orangeTree = trees.last!

let counts = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let apples = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let oranges = readLine()!.components(separatedBy: " ").map{ Int($0)! }

print("\(getFruitCount(appleTree, apples, house))\n\(getFruitCount(orangeTree, oranges, house))")
