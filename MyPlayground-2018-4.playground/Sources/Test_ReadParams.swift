import Foundation
import UIKit

public class Test_ReadParams {
    
    
    public static func run() {
        
        let slideData: [Model.Slide]?
        
        let params = ReadParams()
        slideData = params.loadJson(filename:"slidedeck")
        print(slideData![0].background)
        
        // [MyPlayground_2018_4_Sources.ReadParams.Slide(id: 1.0, title: "Slide 1", background: "#ff0000")]
        
    }
}
