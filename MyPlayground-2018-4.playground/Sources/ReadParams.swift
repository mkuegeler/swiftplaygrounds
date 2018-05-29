import Foundation

// https://stackoverflow.com/questions/24410881/reading-in-a-json-file-using-swift/30548130
class ReadParams {
    
//    struct ResponseData: Decodable {
//        // var header: [Header]
//        var slides: [Slide]
//    }
//    struct Slide : Decodable {
//        var id: Double
//        var title: String
//        var background: String
//    }
    
    func loadJson(filename fileName: String) -> [Model.Slide]? {
        if let url = Bundle.main.url(forResource: fileName, withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode(Model.ResponseData.self, from: data)
                return jsonData.slides
            } catch {
                print("error:\(error)")
            }
        }
        return nil
    }
    
}


