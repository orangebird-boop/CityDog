import Foundation
import CityDogEntities

struct UserProfileViewModel {

    var service = UserService(filesService: FilesService())
    var user: UserModel = UserModel.dummyUser()
    
    
    internal init(service: UserService = UserService(filesService: FilesService()), user: UserModel) {
        self.service = service
        self.user = user
    }
    
    init(){
        self.user = getUser()
    }
    
    func getUser() -> UserModel {
        var user: UserModel = {
            return service.retrieveUser()
        }()
        return user
    }
    
}
