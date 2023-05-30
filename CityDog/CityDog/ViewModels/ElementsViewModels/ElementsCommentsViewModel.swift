import Foundation
import CityDogEntities

struct ElementsCommentsViewModel {
    internal init(element: ElementsModel) {
        self.element = element
    }
    
    
    public init() {
        var newModel: ElementsModel = .init(id: "", name: "", type: "", address: "", shortDescription: "", goodToKnow: "", longitude: "", latitude: "", sumRating: "", comments: [ElementsModel.Comment(title: "blah", message: "bubba", rating: "12", elementId: "2")])
        self.element = newModel
//        self.element.comments = getComments()
        
    }
    
    let element: ElementsModel
    
    func getComments() -> [ElementsModel.Comment] {
        do {
            let comments = try UserPersistenceServices().fetchComment(for: element.id)
            return comments
            
        } catch {
            fatalError("Creating comment entity was unsuccessful")
        }
        
    }
    
//    func getModel() -> ElementsModel {
//        do {
//            let comments = try UserPersistenceServices().fetchComment(for: element.id)
//            fatalError("Creating comment entity was unsuccessful")
//        } catch {
//            print(error)
//        }
//
//    }
}
