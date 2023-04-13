import Foundation
import CityDogEntities

protocol ElementsViewModel {
    var title: String { get }
    var elements: [ElementsModel] { get }
    
    func refreshElements()
}
