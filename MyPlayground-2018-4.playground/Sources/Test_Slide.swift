import Foundation

public class Test_Slide {
    public static func run() {
        let slideData: [ReadParams.Slide]?
        
        let params = ReadParams()
        slideData = params.loadJson(filename:"slidedeck")
        
        let slide = Slide()
        slide.canvas(backgroundColor:slideData![0].background)
        
        
    }
}
