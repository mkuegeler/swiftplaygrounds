import Foundation

// Parameter data type. 
public class parameter {
    
    public init() {
        // This initializer intentionally left empty
    }
    
    // public function 2
    public func set ()  ->Dictionary<String, Any>  {
        
        let x: Double = 0
        let y: Double = 0
        let height: Double = 40
        let width: Double = 40
        let AmountX: Double = 4
        let AmountY: Double = 4

       
        let p = ["x":x, "y":y, "height":height, "width":width, "AmountX": AmountX, "AmountY":AmountY]
        return p
    }
    
            
}
