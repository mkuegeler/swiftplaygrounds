import Foundation
import UIKit
import Foundation
import CoreGraphics
import PlaygroundSupport

public class Test_Slide {
    public static func run() {
        
        let fileName: String
        
        
        
        fileName = "slide"
        
        if let url = Bundle.main.url(forResource: fileName, withExtension: "json") {
            
            
            do {
                let data = try Data(contentsOf: url)
                
                let decoder = JSONDecoder()
                
                let slide = try decoder.decode(SlideModel.Slide.self, from: data)
                
                print("The following slide values are available:")
                
                print("id: \(slide.id)")
                
                print("title: \(slide.title)")
                
                print("background: \(slide.background)")
                
                // optional value: description
                
                if let description = slide.description {
                           print("description: \(description)")
                }
                
                
                
            } catch {
                print("error:\(error)")
            }
            
        }
        
    }
}


