import Foundation

public struct User: Identifiable {
    
    // MARK: - Properties
    
    public let id: String
    public let firstNames: String
    public let lastName: String
    public let email: String
    public let password: String
    public var fullName: String {
        "\(firstNames) \(lastName)"
    }
    
    public let dogs: [Dog]
    
    // MARK: - Initialization
    
    public init(id: String, firstNames: String, lastName: String, email: String, password: String, dogs: [Dog]) {
        self.id = id
        self.firstNames = firstNames
        self.lastName = lastName
        self.email = email
        self.password = password
        self.dogs = dogs
    }
}

public extension User {
    static func dummyUser() -> Self {
        User(id: UUID().uuidString, firstNames: "John", lastName: "Appleseed", email: "johnappleseed@apple.com", password: "", dogs: [Dog(id: UUID().uuidString, name: "Snoopy", breed: "Beagle", age: "5", pictureURL: ""), Dog(id: UUID().uuidString, name: "Prince", breed: "French Bulldog", age: "8", pictureURL: "")])
    }
}
