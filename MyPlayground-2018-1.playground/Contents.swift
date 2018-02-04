//: Playground - noun: a place where people can play
// A playground to examine core graphics and geometry

import UIKit
import CoreGraphics
import PlaygroundSupport

// Initial screen values

let maxwidth = UIScreen.main.bounds.width
let maxheight = UIScreen.main.bounds.height

// Canvas: The core element
func canvas (x: CGFloat = 0, y: CGFloat = 0, w: CGFloat = maxwidth, h: CGFloat = maxheight, bgcolor: UIColor? = UIColor.red) {
    
    let containerView = UIView(frame: CGRect(x:x, y:y,width: w,height: h))
    
    containerView.backgroundColor = bgcolor
    
    PlaygroundPage.current.liveView = containerView
    
}

canvas(bgcolor: UIColor.green)






