import Foundation
import UIKit
import Foundation
import CoreGraphics
import PlaygroundSupport
// https://stackoverflow.com/questions/24263007/how-to-use-hex-colour-values

extension UIColor {
    
    convenience init(hex: String, alpha: CGFloat = 1.0) {
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if (cString.hasPrefix("#")) { cString.removeFirst() }
        
        if ((cString.count) != 6) {
            self.init(hex: "ff0000") // return red color for wrong hex input
            return
        }
        
        var rgbValue: UInt32 = 0
        Scanner(string: cString).scanHexInt32(&rgbValue)
        
        self.init(red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
                  green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
                  blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
                  alpha: alpha)
    }
    
}

//You can then use it like this:
//
//UIColor(hex: "#ff0000") // with #
//UIColor(hex: "ff0000")  // without #
//UIColor(hex: "ff0000", alpha: 0.5) // using optional alpha value

class Slide {
    
    func canvas (backgroundColor: String) {
        
        // Width and height of canvas
        let maxwidth = UIScreen.main.bounds.width
        let maxheight = UIScreen.main.bounds.height
        
        // PowerPoint wide-screen format: 1282x721
        
        // let w: Double = 1282
        // let h: Double = 721
        
        // View of canvas
        let containerView = UIView(frame: CGRect(x:0, y:0,width: maxwidth,height: maxheight))
        
        containerView.backgroundColor = UIColor(hex: backgroundColor)
        
        PlaygroundPage.current.liveView = containerView
        
        
    }
}
