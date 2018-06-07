import Foundation

public class Test_SlideModel {
    public static func run() {
        
        let fileName: String
        
        fileName = "slidedeck"
        
        if let url = Bundle.main.url(forResource: fileName, withExtension: "json") {
            
            do {
                let data = try Data(contentsOf: url)
                // let slideData: [SlideModel.Slide]?
                let decoder = JSONDecoder()
                
                let slides = try decoder.decode([SlideModel.Slide].self, from: data)
                
                print("The following slides are available:")
                for slide in slides {
                    print("\t\(slide.id) (\(slide.title) title)")
                    if let description = slide.description {
                        print("\t\t\(description)")
                    }
                }
                
                
            } catch {
                print("error:\(error)")
            }
        
        }
        
    }
}
