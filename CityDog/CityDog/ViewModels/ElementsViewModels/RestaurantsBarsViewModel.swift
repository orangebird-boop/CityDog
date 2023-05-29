import Foundation
import CityDogEntities

class RestaurantsBarsViewModel: ElementsViewModel {
    let title = "Restaurants / Bars"
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
    service.retrieveElement().filter { $0.type == "restaurant" || $0.type == "bar" }
    }

}

