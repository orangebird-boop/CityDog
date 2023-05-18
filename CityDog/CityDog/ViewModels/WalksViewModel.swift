import Foundation
import CityDogEntities

class WalksViewModel: ElementsViewModel {
 
    
    

    var service: CityDogEntities.ElementsService = CityDogEntities.ElementsService(filesService: FilesService())
    var elements: [CityDogEntities.ElementsModel] = []
    internal init(elements: [ElementsModel], service: ElementsService) {
        self.elements = elements
        self.service = service
    }
    
    internal init(){
        //service = ElementsService(filesService: FilesService())
        self.elements = getElements()
    }
    
    
  

    let title = "Walks"
//    internal (set) var elements: [ElementsModel]
   
    
    
    
//    var dog: DogModel
//
//
//    public init(service: DefaultsService = DefaultsService(filesService: FilesService()), dog: DogModel) {
//        self.service = service
//        self.dog = dog
//
//    }
//
//    func getBreeds() -> [Breed] {
//        var dogBreeds: [Breed] = {
//            return service.retrieveDogBreeds()
//        }()
//        return dogBreeds
//    }
 
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
                elements = elementsData
//                elements = elementsData.object.filter { $0. == "caniparc" }
            } catch {
            
                print("Error decoding JSON: \(error.localizedDescription)")
            }
        }

        return elements
    }

}
