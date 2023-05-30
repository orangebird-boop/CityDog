
import Foundation
import CityDogEntities

struct ElementsAddCommentViewModel {
    public init(element: ElementsModel) {
        self.element = element
    }
    public init() {
        self.element = .init(id: "", name: "", type: "", address: "", shortDescription: "", goodToKnow: "", longitude: "", latitude: "", sumRating: "", comments: [])
    }
    
    let element : ElementsModel
    func addComment(){
        let service = UserPersistenceServices()
    }
}
