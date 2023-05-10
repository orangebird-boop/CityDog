import Foundation

public struct DogModel: Identifiable {

    // MARK: - Properties
    
    public let id: String
    public let name: String
    public let breed: Breed
    public let age: String
    public let pictureURL: String
    
    // MARK: - Initialization
    public init(id: String, name: String, breed: Breed, age: String, pictureURL: String) {
        self.id = id
        self.name = name
        self.breed = breed
        self.age = age
        self.pictureURL = pictureURL
    }
}
 
//public extension DogModel {
//    static func dummyDog() -> Self {
//        DogModel(id: UUID().uuidString, name: "Lenny", breed: Breed(from: loadJson(filename: "dogbreeds.json")), age: "12", pictureURL: "")
//    }
//}

//struct ResponseData: Decodable {
//    var breed: [Breed]
//}

public struct Breed: Decodable {
    var id : Int
    public var breedName: String
}


