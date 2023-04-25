import Foundation
import CityDogEntities

protocol ElementsViewModel {
    var title: String { get }
    var elements: [ElementsModel] { get }
    
    func refreshElements()
}

protocol ElementsDetailsViewModel {
    var element: ElementsModel { get }
}

struct DefaultElementDetailsViewModel: ElementsDetailsViewModel {
    let element: ElementsModel
}
