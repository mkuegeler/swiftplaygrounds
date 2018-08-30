import Foundation

public class SlideModel {
    
    public struct Slide: Codable {
        var id: Double
        var title: String
        var background: String //  hex value i.e. "#ff0000"
        var description: String? // optional value
        var ratio: Size
        var gradient: Gradient?
        
        struct Size: Codable {
            var width: Double
            var height: Double
        }
        
        struct Gradient: Codable {
            var colors: [String: String]
            var startPoint: Point
            var endPoint: Point
        }
        
        struct Point: Codable {
            var x: Double
            var y: Double
        }
        
        
    }
    
}

