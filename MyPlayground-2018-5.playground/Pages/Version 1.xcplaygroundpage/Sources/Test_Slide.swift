import Foundation
import UIKit
import Foundation
import CoreGraphics
import PlaygroundSupport

public class Test_Slide {
    public static func run() {
        
        let fileName: String
        
        let outfile: String
        
        var output: UIView
        
        let today = Date()
        
        let DateStr: String = today.toString(dateFormat: "yyyy-MM-dd")
        
        let count = 0
        
        fileName = "slide"
        
        outfile = DateStr+"-"+String(count)+".png"
        
        if let url = Bundle.main.url(forResource: fileName, withExtension: "json") {
            
            
            do {
                let data = try Data(contentsOf: url)
                
                let decoder = JSONDecoder()
                
                let slide = try decoder.decode(SlideModel.Slide.self, from: data)
                
                let background = slide.background
                
                let width = slide.ratio.width
                
                let height = slide.ratio.height
                
                
                print("The following slide values are available:")
                
                print("id: \(slide.id)")
                
                print("title: \(slide.title)")
                
                print("background: \(slide.background)")
                
                // optional value: description
                
                if let description = slide.description {
                           print("description: \(description)")
                }
                
                print("width: \(slide.ratio.width)")
                
                print("height: \(slide.ratio.height)")
                
                // 18.9: Continue here
                
                if slide.gradient != nil {
                    print("gradient: \(slide.gradient!.colors)")
                }
                
                
                output = Slide().canvas(backgroundColor:background, width:width,height:height)
                WriteFile().writePNG(containerView: output, filename:outfile)
                
                
                
            } catch {
                print("error:\(error)")
            }
            
        }
        
    }
}


