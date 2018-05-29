import Foundation
//  Design the initial model related to Json structure
class Model {
    
    public init() {
        // This initializer intentionally left empty
        
    }
    
    struct ResponseData: Decodable {
        
        var slides: [Slide]
    }
    
    
    struct Slide : Decodable {
        var id: Double
        var title: String
        var background: String
    }
    
}

