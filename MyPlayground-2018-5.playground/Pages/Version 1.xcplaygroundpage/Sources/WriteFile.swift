import UIKit
import Foundation
import CoreGraphics
import PlaygroundSupport

class WriteFile {
    
    func writePNG (containerView: UIView, filename: String = "slide.png" ) {
        
        // let filename: String = "slide.png"
        
        let renderer = UIGraphicsImageRenderer(size: containerView.bounds.size)
        let image = renderer.image { ctx in
            containerView.drawHierarchy(in: containerView.bounds, afterScreenUpdates: true)
        }
        
        if let data = image.pngData() {
            let filename = playgroundSharedDataDirectory.appendingPathComponent(filename)
            try? data.write(to: filename)
        }
        
    }
}


