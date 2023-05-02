import Foundation

public struct Dog: Identifiable {

    // MARK: - Properties
    
    public let id: String
    public let name: String
    public let breed: String
    public let age: String
    public let pictureURL: String
    
    // MARK: - Initialization
    public init(id: String, name: String, breed: String, age: String, pictureURL: String) {
        self.id = id
        self.name = name
        self.breed = breed
        self.age = age
        self.pictureURL = pictureURL
    }
}
 
public extension Dog {
    static func dummyDog() -> Self {
        Dog(id: UUID().uuidString, name: "Lenny", breed: "Fox Terrier", age: "12", pictureURL: "")
    }
}
