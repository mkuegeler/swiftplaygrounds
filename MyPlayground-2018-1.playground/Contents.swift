// A playground to examine core graphics and geometry in Swift
// Michael Kuegeler February 2018
// 5deen.com

import UIKit
import Foundation
import CoreGraphics
import PlaygroundSupport

// ---------------------------------------------------------------------------
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

// Initial screen values
// ---------------------------------------------------------------------------
let maxwidth = UIScreen.main.bounds.width
let maxheight = UIScreen.main.bounds.height
// ---------------------------------------------------------------------------
// Custom functions
// ---------------------------------------------------------------------------
// Canvas: The core element
// ---------------------------------------------------------------------------
func canvas (x: CGFloat = 0, y: CGFloat = 0, w: CGFloat = maxwidth, h: CGFloat = maxheight, bgcolor: UIColor? = UIColor.red) {
    
    let containerView = UIView(frame: CGRect(x:x, y:y,width: w,height: h))
    
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
    
    // containerView.backgroundColor = bgcolor
    
    PlaygroundPage.current.liveView = containerView
    
    
    
}
gradientCanvas()


// ---------------------------------------------------------------------------


