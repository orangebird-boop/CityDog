import Foundation
import CityDogEntities

struct ModifyNameViewModel {
    
    var user: User
    var firstName: String
    var lastName: String
    
    var hasUnsavedChanges: Bool {
        user.firstName != firstName && user.lastName != lastName
    }
    
    init(user: User) {
        self.user = user
        self.firstName = user.firstName
        self.lastName = user.lastName
    }
}
