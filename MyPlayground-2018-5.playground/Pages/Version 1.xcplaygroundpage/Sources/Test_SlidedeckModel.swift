import Foundation
import UIKit
import Foundation
import CoreGraphics
import PlaygroundSupport

public class Test_SlidedeckModel {
    public static func run() {
        
        let fileName: String
        
        var outfile: String
        
        var output: UIView
        
        let today = Date()
        let DateStr: String = today.toString(dateFormat: "yyyy-MM-dd")
        
        var count = 0
        
        fileName = "slidedeck3"
        
        if let url = Bundle.main.url(forResource: fileName, withExtension: "json") {
            
            do {
                let data = try Data(contentsOf: url)
                
                let decoder = JSONDecoder()
                
                let slidedeck = try decoder.decode([SlidedeckModel.Slidedeck].self, from: data)
                
//                let name = slidedeck[0].name
//
                let width = slidedeck[0].ratio.width

                let height = slidedeck[0].ratio.height

                for s in slidedeck[0].slides {
                        print("\t\(s.title)")
                        
                        outfile = DateStr+"-"+String(count)+".png"
                        
                    output = Slide().canvas(backgroundColor:s.background, width:width,height:height)
                        WriteFile().writePNG(containerView: output, filename:outfile)
                        
                        count = count + 1
                }
                
            } catch {
                print("error:\(error)")
            }
            
        }
        
    }
}

