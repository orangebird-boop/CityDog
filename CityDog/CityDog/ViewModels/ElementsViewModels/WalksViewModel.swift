import Foundation
import CityDogEntities

class WalksViewModel: ElementsViewModel {
    let title = "Walks"
    
    var service: ElementsService = ElementsService()
    var elements: [ElementsModel] = []
    internal init(elements: [ElementsModel], service: ElementsService) {
        self.elements = elements
        self.service = service
    }
    
    init(){
        self.elements = getElements()
    }

    func getElements() -> [ElementsModel] {
    service.retrieveElement().filter { $0.type == "parc" || $0.type == "caniparc" }
    }

}
