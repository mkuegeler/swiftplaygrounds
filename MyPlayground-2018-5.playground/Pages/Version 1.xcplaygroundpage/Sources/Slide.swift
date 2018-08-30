import Foundation
import UIKit
import Foundation
import CoreGraphics
import PlaygroundSupport
// https://stackoverflow.com/questions/24263007/how-to-use-hex-colour-values

// get colors from hex input
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
// Slide class definition
public class Slide  {
    
    let maxwidth = UIScreen.main.bounds.width
    let maxheight = UIScreen.main.bounds.height
    
    public func canvas (backgroundColor: String = "#cccccc",
                        width: Double = 640, height: Double = 480,
                        gradient: CAGradientLayer? = nil
        ) -> UIView {
        
        // Width and height of canvas
        
        // PowerPoint wide-screen format: 1282x721
        
        // let w: Double = 1282
        // let h: Double = 721
        
        // View of canvas
        let containerView = UIView(frame: CGRect(x:0, y:0,width: width,height: height))
        
        // containerView.backgroundColor = UIColor(hex: backgroundColor)
        
        GradientBackground (view: containerView)
        
        PlaygroundPage.current.liveView = containerView
        
        return containerView
        
    }
    
    private func GradientBackground (view: UIView) {
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.red.cgColor, UIColor.yellow.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.frame = view.bounds
        
        view.layer.addSublayer(gradientLayer)
        
    }
    
    
}
