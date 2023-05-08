import Foundation
import CityDogEntities

struct ModifyPasswordViewModel{
    let user: User
    var newPassword: String
    
    func saveChanges() {
        // TODO: Ask UserPersistenceService to update user with new Password
    }
}
