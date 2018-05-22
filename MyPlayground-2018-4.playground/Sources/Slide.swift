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
        
        // PowerPoint wide-screen format: 1282x721
        
        // let w: Double = 1282
        // let h: Double = 721
        
        // View of canvas
        let containerView = UIView(frame: CGRect(x:0, y:0,width: maxwidth,height: maxheight))
        
        containerView.backgroundColor = UIColor.blue
        
        PlaygroundPage.current.liveView = containerView
        
        
    }
}
