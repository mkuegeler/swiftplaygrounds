import Foundation

public class Test_SlidedeckModel {
    public static func run() {
        
        let fileName: String
        
        fileName = "slidedeck3"
        
        if let url = Bundle.main.url(forResource: fileName, withExtension: "json") {
            
            do {
                let data = try Data(contentsOf: url)
                
                let decoder = JSONDecoder()
                
                let slidedeck = try decoder.decode([SlidedeckModel.Slidedeck].self, from: data)
                
                for item in slidedeck {
                     print("\t\(item.name) \(item.ratio)")
                    

                }
                
                
            } catch {
                print("error:\(error)")
            }
            
        }
        
    }
}

