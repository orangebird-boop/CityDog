
import Foundation
import CityDogEntities

struct AddDogViewModel {
    var dog: DogModel
    let name: String
    let breed: Breed
    let age: String
    let pictureURL: String
    
    
    
    
    func readJSONFile(forName name: Breed) {
        do {
            if let bundlePath = Bundle.main.path(forResource: name, ofType: "json"),
               let jsonData = try String(contentsOfFile: bundlePath).data(using: .utf8) {
                if let json = try JSONSerialization.jsonObject(with: jsonData, options: .mutableLeaves) as? [String: Any] {
                    print("JSON: \(json)")
                } else {
                    print("Given JSON is not a valid dictionary object.")
                }
            }
        } catch {
            print(error)
        }
    }
    
    func parse(jsonData: Data) -> Breed {
        do {
            let decodedData = try JSONDecoder().decode(Breed.self, from: jsonData)
            return decodedData
        } catch {
            print("error: \(error)")
        }
        return
    }
    
}
