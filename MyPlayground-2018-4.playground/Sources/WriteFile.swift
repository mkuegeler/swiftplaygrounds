import UIKit
import Foundation
import CoreGraphics
import PlaygroundSupport

class WriteFile {
    func do_something() -> String {
        return "Test"
    }
    
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
}

