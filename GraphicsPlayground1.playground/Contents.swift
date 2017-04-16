//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

// Parameter
struct Parameter {
    let x: Double
    let y: Double
    let height: Double
    let width: Double
    let AmountX: Double
    let AmountY: Double
}

// Declare our new function
func abstractGrid (params:Parameter ) ->Array<[String: Double]>   {
    
    let x = (params.x-(params.width/2))
    let y = (params.y-(params.height/2))
    let height = params.height
    let width = params.width
    let AmountX = params.AmountX
    let AmountY = params.AmountY
    
    // var i: Int
    // var j: Int
    var x1: Double = x
    var y1: Double = y
    var x2: Double
    var y2: Double
    var pm: Double = 0
    
    
    
    var grid = [[String: Double]]()
    
    for i in 1..<Int(AmountX) {
        
        pm = ((width/AmountX)*Double(i))
        x1 = (x+pm)
        y1 = y
        
        x2 = x1
        y2 = (y+height)
        
        grid.append(["x1": x1, "y1": y1, "x2": x2, "y2": y2 ])
        
        
        
        
        
    }
    
    for j in 1..<Int(AmountY) {
        
        pm = ((height/AmountY)*Double(j))
        
        x1 = x
        y1 = (y+pm)
        
        x2 = (x+width)
        y2 = y1;
        
        
        grid.append(["x1": x1, "y1": y1, "x2": x2, "y2": y2 ])
        
        
    }
    
    
    return grid
    
}
////////////////////////////////////////////////////////////////
// abstractNodes
func abstractNodes (params:Parameter ) ->Array<[String: Double]>   {
    
    let x = (params.x-(params.width/2))
    let y = (params.y-(params.height/2))
    let height = params.height
    let width = params.width
    let AmountX = params.AmountX
    let AmountY = params.AmountY
    
    var x1: Double = x
    var y1: Double = y
    var pm: Double = 0
    
    var grid = [[String: Double]]()
    
    for j in 1..<Int(AmountY) {
        
        for i in 1..<Int(AmountX) {
            pm = ((width/AmountX)*Double(i))
            
            x1 = (x+pm)
            y1 = y+((height/AmountY)*Double(j))
            
            grid.append(["x1": x1, "y1": y1])
            
        }
        
    }
    
    return grid
}




////////////////////////////////////////////////////////////////
let containerView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 375.0, height: 667.0))
containerView.backgroundColor = UIColor.red

PlaygroundPage.current.liveView = containerView

////////////////////////////////////////////////////////////////



let circle = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 50.0, height: 50.0))
circle.center = containerView.center
circle.layer.cornerRadius = 25.0

let startingColor = UIColor(red: (253.0/255.0), green: (159.0/255.0), blue: (47.0/255.0), alpha: 1.0)
circle.backgroundColor = startingColor

containerView.addSubview(circle);



