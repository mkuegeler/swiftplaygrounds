import Foundation
import UIKit
import Foundation
import CoreGraphics
import PlaygroundSupport

class Slide {
    func sample() -> String {
        return "slide 1"
    }
    
    func canvas () {
        
        // Width and height of canvas
        let maxwidth = UIScreen.main.bounds.width
        let maxheight = UIScreen.main.bounds.height
        
        // View of canvas
        let containerView = UIView(frame: CGRect(x:0, y:0,width: maxwidth,height: maxheight))
        
        containerView.backgroundColor = UIColor.blue
        
        PlaygroundPage.current.liveView = containerView
        
        
    }
}
