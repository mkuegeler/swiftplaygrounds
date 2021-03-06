//: Playground - noun: a place where people can play
// Write an image to a png file
// https://www.hackingwithswift.com/example-code/media/how-to-save-a-uiimage-to-a-file-using-uiimagepngrepresentation

import UIKit
import Foundation
import CoreGraphics
import PlaygroundSupport

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

// https://gist.github.com/MrJackdaw/6ffbc33fc274838412bfe3ad48592b9b
extension UIView {
    
    // Example use: myView.addBorder(toSide: .Left, withColor: UIColor.redColor().CGColor, andThickness: 1.0)
    
    enum ViewSide {
        case left, right, top, bottom
    }
    
    func addBorder(toSide side: ViewSide, withColor color: CGColor, andThickness thickness: CGFloat) {
        
        let border = CALayer()
        border.backgroundColor = color
        
        switch side {
        case .left: border.frame = CGRect(x: frame.minX, y: frame.minY, width: thickness, height: frame.height)
        case .right: border.frame = CGRect(x: frame.maxX, y: frame.minY, width: thickness, height: frame.height)
        case .top: border.frame = CGRect(x: frame.minX, y: frame.minY, width: frame.width, height: thickness)
        case .bottom: border.frame = CGRect(x: frame.minX, y: frame.maxY, width: frame.width, height: thickness)
        }
        
        layer.addSublayer(border)
    }
}

// write simple rectangle as an image to a file
// Links:
// https://www.hackingwithswift.com/example-code/media/how-to-save-a-uiimage-to-a-file-using-uiimagepngrepresentation

func canvas (style: String? = "Default") ->UIView {
    
    // Initial screen values
    
    // let maxwidth = UIScreen.main.bounds.width
    // let maxheight = UIScreen.main.bounds.height
    
    // PowerPoint wide-screen format: 1282x721
    
    let w: Double = 1282
    let h: Double = 721
    
    
    let containerView = UIView(frame: CGRect(x:0, y:0,width: w,height: h))
    
    
    if style == "gradient" {
        
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
        
    } else {
        containerView.backgroundColor = UIColor.green
    }
    
    // Example use: myView.addBorder(toSide: .Left, withColor: UIColor.redColor().CGColor, andThickness: 1.0)
    
    let rect = UIView(frame: CGRect(
        origin: CGPoint(x: 10, y: 10),
        size: CGSize.init(width: 300, height: 300)
    ))
    rect.backgroundColor = UIColor.blue
    // rect.addBorder(toSide: left, withColor: UIColor.black, andThickness: 1.0)
    
    
    containerView.addSubview(rect);
    
    return containerView
    
    
}

// render to image file

func writePNG (containerView: UIView) {
    
    let renderer = UIGraphicsImageRenderer(size: containerView.bounds.size)
    let image = renderer.image { ctx in
        containerView.drawHierarchy(in: containerView.bounds, afterScreenUpdates: true)
    }
    
    if let data = UIImagePNGRepresentation(image) {
        let filename = playgroundSharedDataDirectory.appendingPathComponent("newfile.png")
        try? data.write(to: filename)
    }
    
}
// call rect function
// PlaygroundPage.current.liveView = canvas(style: "gradient")
// PlaygroundPage.current.liveView = canvas()

// Write view to png file
writePNG(containerView: canvas(style: "gradient"))
// writePNG(containerView: canvas())
