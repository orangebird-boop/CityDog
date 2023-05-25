import Foundation
import CityDogEntities


class VeterinariansViewModel: ElementsViewModel {
    let title = "Veterinarians"
    var service: CityDogEntities.ElementsService = CityDogEntities.ElementsService(filesService: FilesService())
    var elements: [CityDogEntities.ElementsModel] = []
    internal init(elements: [ElementsModel], service: ElementsService) {
        self.elements = elements
        self.service = service
    }
    
    internal init(){
        self.elements = getElements()
    }
    func getElements() -> [ElementsModel] {
        var elements : [ElementsModel] = {
            return service.retrieveElement()
        }()
        return elements
    }
    
    func refreshElements() -> [ElementsModel] {
        if let fileURL = Bundle.main.url(forResource: "elements", withExtension: "json"),
           let data = try? Data(contentsOf: fileURL) {
            let decoder = JSONDecoder()
            do {
                let elementsData = try decoder.decode([ElementsModel].self, from: data)
//                elements = elementsData
                elements = elementsData.filter { $0.type == "veterinaire" }
            } catch {
            
                print("Error decoding JSON: \(error.localizedDescription)")
            }
        }

        return elements
    }
}

