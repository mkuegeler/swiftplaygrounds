import Foundation

public class SlidedeckModel {
    
    public struct Slidedeck: Codable {
        var name: String
        var ratio: Size
        var slides: [Slide]
        
        struct Size: Codable {
            var width: Double
            var height: Double
        }
        
        struct Slide: Codable {
            var id: Double
            var title: String
            var background: String //  hex value i.e. "#ff0000"
            var description: String? // optional value
        }
        
    }
    
}
