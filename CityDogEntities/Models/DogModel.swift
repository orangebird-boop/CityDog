import Foundation

public struct DogModel: Identifiable, Decodable {

    // MARK: - Properties
    
    public let id: String
    public let name: String
    public let breed: Breed
    public let age: String
    public let pictureURL: String
    
    // MARK: - Initialization
    public init(id: String, name: String, breed: Breed, age: String, pictureURL: String) {
        self.id = UUID().uuidString
        self.name = name
        self.breed = breed
        self.age = age
        self.pictureURL = pictureURL
    }
}


public struct Breed: Decodable, Hashable {
    
    public init(id: Int, name: String) {
        self.id = id
        self.name = name
    }
    
    public let id : Int
    public let name: String
}

public extension DogModel {
    static func dummyDog() -> Self {
        DogModel(id: UUID().uuidString, name: "Lenny", breed: Breed(id: 2, name: "Fox Terrier"), age: "12", pictureURL: "")
    }
}
