//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport


let x: Double = 0
let y: Double = 0
let height: Double = 40
let width: Double = 40
let AmountX: Double = 4
let AmountY: Double = 4


let myp = ["x":x, "y":y, "height":height, "width":width, "AmountX": AmountX, "AmountY":AmountY]

let p = parameter(p: myp)
// Get element for key "name"


// let height = p.set()["height"] as! Double

// print(p.set()["height"] as! Double)

// p.test(firstThing: "M")

print(p.get())


