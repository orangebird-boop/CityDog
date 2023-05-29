import Foundation
import CityDogEntities

struct ElementsCommentsViewModel {
    let element: ElementsModel
    
    func getComments() {
        UserPersistenceServices().fetchComment(for: element.id)
           
    }
}
