
import Foundation

public struct UserService {
    private let filesService: FilesService
    
    public init(filesService: FilesService) {
        self.filesService = filesService
    }
    
//    public func retrieveUser() -> UserModel {
//        guard let rawUser =  filesService.retrieve(file: "dummyUser", with: "json", from: Bundle.main) else {
//            return UserModel.dummyUser()
//        }
//        
//        guard let user = try? JSONDecoder().decode(UserModel.self, from: rawUser) else {
//            return UserModel.dummyUser()
//        }
//        
//        return user
//        
//    }
    
    public func retrieveUser() -> UserModel {
        guard let rawUser =  filesService.retrieve(file: "dummyUser", with: "json", from: Bundle.main) else {
            return UserModel.dummyUser()
        }
        
        do {
            let user = try JSONDecoder().decode(UserModel.self, from: rawUser)
            return user
        } catch {
            dump(error)
            return UserModel.dummyUser()
        }

        }
}
