import Foundation

public struct User: Identifiable {
    
    // MARK: - Properties
    
    public let id: String
    public var firstName: String
    public var lastName: String
    public let email: String
    public var password: String
    public var fullName: String {
        "\(firstName) \(lastName)"
    }
    
    public let dogs: [DogModel]
    
    // MARK: - Initialization
    
    public init(id: String, firstNames: String, lastName: String, email: String, password: String, dogs: [DogModel]) {
        self.id = id
        self.firstName = firstNames
        self.lastName = lastName
        self.email = email
        self.password = password
        self.dogs = dogs
    }
}

public extension User {
    static func dummyUser() -> Self {
        User(id: UUID().uuidString, firstNames: "John", lastName: "Appleseed", email: "johnappleseed@apple.com", password: "", dogs: [DogModel(id: UUID().uuidString, name: "Snoopy", breed: Breed(id: 1, name: "Beagle"), age: "11", pictureURL: "")])
    }
}
