import Foundation

public class SlideModel {
    
    public struct Slide: Codable {
        var id: Double
        var title: String
        var background: String
        var description: String? // optional value
    }
    
}

