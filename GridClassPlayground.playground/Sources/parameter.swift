import Foundation

// Parameter data type. 
public class parameter {
    
    var params: Dictionary<String, Any> = ["x":0, "y":0, "height":40, "width":40, "AmountX": 4, "AmountY":4]
    
    public init (p: Dictionary<String, Any>? = nil) {
            params = p!
       
            }
    
    public func test(firstThing: String? = nil) {
        if let firstThing = firstThing {
            print(firstThing)
        } else {print("No value!")}
        
    }
    
    internal func defaultValues () ->Dictionary<String, Any>{
        
        // default values
        let x: Double = 0
        let y: Double = 0
        let height: Double = 40
        let width: Double = 40
        let AmountX: Double = 4
        let AmountY: Double = 4
        
        return ["x":x, "y":y, "height":height, "width":width, "AmountX": AmountX, "AmountY":AmountY]
    
    }
    
    // public function
    public func set ()  ->Dictionary<String, Any>  {
        
        // default values
        let x: Double = 0
        let y: Double = 0
        let height: Double = 40
        let width: Double = 40
        let AmountX: Double = 4
        let AmountY: Double = 4

       
        let p = ["x":x, "y":y, "height":height, "width":width, "AmountX": AmountX, "AmountY":AmountY]
        return p
    }
    
    // public function
    public func get ()  ->Dictionary<String, Any>  {
        
        
        return params
    }

    
            
}
