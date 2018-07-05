import Foundation
import UIKit
import Foundation
import CoreGraphics
import PlaygroundSupport

extension Date
{
    func toString( dateFormat format  : String ) -> String
    {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.string(from: self)
    }
    
}

public class Test_WriteFile {
    public static func run() {
        
        let fileName: String
        
        var outfile: String
        
        var count = 0
        
        var output: UIView
        
        fileName = "slidedeck"
        
        let today = Date()
        let DateStr: String = today.toString(dateFormat: "yyyy-MM-dd")
       
        // let randomInt: UInt32 = arc4random() % 10;
        
        if let url = Bundle.main.url(forResource: fileName, withExtension: "json") {
            
            do {
                let data = try Data(contentsOf: url)
                
                let decoder = JSONDecoder()
                
                let slides = try decoder.decode([SlideModel.Slide].self, from: data)
                
                print("The following slides are available:")
                for slide in slides {
                    
                    // outfile = DateStr+String(randomInt)+"-"+String(count)+".png"
                    outfile = DateStr+"-"+String(count)+".png"
                    
                    output = Slide().canvas(backgroundColor:slide.background)
                    WriteFile().writePNG(containerView: output, filename:outfile)
                    
                    count = count + 1
                    
                    
                }
                
                
            } catch {
                print("error:\(error)")
            }
            
        }
        
    }
}



