import Foundation

public class SlideModel {
    
    public struct Slide: Codable {
        var id: Double
        var title: String
        var background: String //  hex value i.e. "#ff0000"
        var description: String? // optional value
        var ratio: Size
        
        struct Size: Codable {
            var width: Double
            var height: Double
        }
    }
    
}

