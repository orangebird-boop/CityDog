import Foundation

public struct UserModel: Identifiable, Decodable {
 
    
    // MARK: - Initialization
    
    public init(id: String, firstName: String, lastName: String, email: String, password: String, dogs: [DogModel]) {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.password = password
        self.dogs = dogs
    }
    // MARK: - Properties
    
    public let id: String
    public var firstName: String
    public var lastName: String
    public let email: String
    public var password: String
//    public var fullName: String {
//        "\(firstName) \(lastName)"
//    }
    
    public let dogs: [DogModel]
    

}

public extension UserModel {
    static func dummyUser() -> Self {
        UserModel(id: UUID().uuidString, firstName: "Peter", lastName: "Griffin", email: "johnappleseed@apple.com", password: "", dogs: [DogModel(id: UUID().uuidString, name: "Snoopy", breed: Breed(id: 1, name: "Beagle"), age: "11", pictureURL: "")])
    }
}
