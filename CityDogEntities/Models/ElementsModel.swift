import Foundation

public struct ElementsModel: Codable, Identifiable {
    public let id: String
    
    public let name: String
    public let type: String
    public let address: String
    public let shortDescription: String
    public let goodToKnow: String
    public let longitude: String
    public let latitude: String
    public let sumRating: String
    public let comments: [Comment]
    
    public init(id: String, name: String, type: String, address: String, shortDescription: String, goodToKnow: String, longitude: String, latitude: String, sumRating: String, comments: [Comment]) {
        self.id = id
        self.name = name
        self.type = type
        self.address = address
        self.shortDescription = shortDescription
        self.goodToKnow = goodToKnow
        self.longitude = longitude
        self.latitude = latitude
        self.sumRating = sumRating
        self.comments = comments
    }
}


public struct Comment: Codable {
    public let title: String
    public let message: String
    public let rating: String
    
    public init(title: String, message: String, rating: String) {
        self.title = title
        self.message = message
        self.rating = rating
    }
    
}

//public struct ElementsModel: Codable {
//
//     // MARK: - Properties
//
//    public let name: String
//    public let type: String
//    public let address: String
//    public let description: String
//    public let goodToKnow: String
//    public let longitude: String
//    public let latitude: String
////    public let sumRating: Int
////    public let comments: Comments?
//
//    // MARK: - Initialization
//
//
//    internal init(name: String, type: String, address: String, description: String, goodToKnow: String, longitude: String, latitude: String) {
//        self.name = name
//        self.type = type
//        self.address = address
//        self.description = description
//        self.goodToKnow = goodToKnow
//        self.longitude = longitude
//        self.latitude = latitude
////        self.sumRating = sumRating
////        self.comments = comments
//    }
//
//
//}
//
//public struct Comments {
//
//
//     // MARK: - Properties
//
//    public let title: String
//    public let text: String
//    public let rating: Int
//
//
//    // MARK: - Initialization
//
//    public init(title: String, text: String, rating: Int) {
//        self.title = title
//        self.text = text
//        self.rating = rating
//    }
//}
//
//public struct ElementsData: Codable {
//    public let elements: [ElementsModel]
//}
