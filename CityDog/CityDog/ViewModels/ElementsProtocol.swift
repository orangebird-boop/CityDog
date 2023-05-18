import Foundation
import CityDogEntities

protocol ElementsViewModel {
    
//    var title: String { get }
    var elements: [ElementsModel] { get set}
    var service: ElementsService { get set }
    
    func getElements() -> [ElementsModel]
}

protocol ElementsDetailsViewModel {
    var element: ElementsModel { get }
}

struct DefaultElementDetailsViewModel: ElementsDetailsViewModel {
    let element: ElementsModel
}
