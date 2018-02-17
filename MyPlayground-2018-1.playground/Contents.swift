// A playground to examine core graphics and geometry in Swift
// Michael Kuegeler February 2018
// 5deen.com

import UIKit
import Foundation
import CoreGraphics
import PlaygroundSupport

// ---------------------------------------------------------------------------

// Parameter
struct Parameter {
    let x: Double
    let y: Double
    let height: Double
    let width: Double
    let AmountX: Double
    let AmountY: Double
}


// Define Custom colors
// see here: http://www.codingexplorer.com/create-uicolor-swift/

extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        let newRed = CGFloat(red)/255
        let newGreen = CGFloat(green)/255
        let newBlue = CGFloat(blue)/255
        
        self.init(red: newRed, green: newGreen, blue: newBlue, alpha: 1.0)
    }
}
let newSwiftColor = UIColor(red: 255, green: 0, blue: 255)

// Initial screen values and view
// ---------------------------------------------------------------------------
// Width and height of canvas
let maxwidth = UIScreen.main.bounds.width
let maxheight = UIScreen.main.bounds.height
// View of canvas
let containerView = UIView(frame: CGRect(x:0, y:0,width: maxwidth,height: maxheight))

// Create Gradient Layer

func gradient (containerView: UIView = UIView(frame: CGRect(x:0, y:0,width: maxwidth,height: maxheight)),
               startPoint: CGPoint = CGPoint(x: 0.0, y: 0.95), endPoint: CGPoint = CGPoint(x: 1.0, y: 0.05)) {
    
    let gradientLayer = CAGradientLayer()
    
    
    // Set Layer Size
    gradientLayer.frame = (containerView.frame)
    
    // Provide an Array of CGColors
    gradientLayer.colors = [UIColor.magenta.cgColor, UIColor.cyan.cgColor]
    
    // Guesstimate a Match to 47° in Coordinates
    gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.95)
    gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.05)

    
}

// gradient()

// ---------------------------------------------------------------------------
// Custom functions
// ---------------------------------------------------------------------------
// Canvas: The core element
// ---------------------------------------------------------------------------
func canvas (containerView: UIView = UIView(frame: CGRect(x:0, y:0,width: maxwidth,height: maxheight)), bgcolor: UIColor? = UIColor.red) {
    
    
    containerView.backgroundColor = bgcolor
    
    PlaygroundPage.current.liveView = containerView
    
}

// canvas(bgcolor: newSwiftColor)
// ---------------------------------------------------------------------------
// Gradient canvas
// See here: https://medium.com/@mr_d_todd/linear-gradients-à-la-css-in-swift-3-1-5d29b5de5ae0

func gradientCanvas (x: CGFloat = 0, y: CGFloat = 0, w: CGFloat = maxwidth, h: CGFloat = maxheight, bgcolor: UIColor? = UIColor.red) {
    
    let containerView = UIView(frame: CGRect(x:x, y:y,width: w,height: h))
    
    // Create Gradient Layer
    let gradientLayer = CAGradientLayer()
    
    // Set Layer Size
    gradientLayer.frame = containerView.frame
    
    // Provide an Array of CGColors
    gradientLayer.colors = [UIColor.magenta.cgColor, UIColor.cyan.cgColor]
    
    // Guesstimate a Match to 47° in Coordinates
    gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.95)
    gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.05)
    
    // Add Gradient Layer to Test View
    containerView.layer.addSublayer(gradientLayer)
    
    let rect = UIView(frame: CGRect(
        origin: CGPoint(x: 100, y: 10),
        size: CGSize.init(width: 300, height: 100)
    ))
    
    rect.backgroundColor = UIColor.red
    
    containerView.addSubview(rect);
    
    
    
    // containerView.backgroundColor = bgcolor
    
    PlaygroundPage.current.liveView = containerView
    
    
    
}
gradientCanvas()

// ---------------------------------------------------------------------------
// Rectangle

func rect () {
    
    let containerView = UIView(frame: CGRect(x:0, y:0,width: 400,height: 400))
    
    let p = Parameter(x:10,y:10,height:100, width:100, AmountX:4, AmountY:4)
    
    let rect = UIView(frame: CGRect(
        origin: CGPoint(x: p.x, y: p.y),
        size: CGSize.init(width: p.width, height: p.height)
    ))
    
    rect.backgroundColor = UIColor.blue
    
    containerView.addSubview(rect);
    
}
// rect()


