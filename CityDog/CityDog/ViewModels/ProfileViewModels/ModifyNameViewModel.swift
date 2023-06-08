import Foundation
import CityDogEntities

struct ModifyNameViewModel {
    
    var user: UserModel
    var firstName: String
    var lastName: String
    
    var hasUnsavedChanges: Bool {
        user.firstName != firstName && user.lastName != lastName
    }
    
    init(user: UserModel) {
        self.user = user
        self.firstName = user.firstName
        self.lastName = user.lastName
    }
}
