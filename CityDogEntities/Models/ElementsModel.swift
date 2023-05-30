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
    
    public struct Comment: Codable {
        public let title: String
        public let message: String
        public let rating: String
        public let elementId: String


        public init(title: String, message: String, rating: String, elementId: String) {
            self.title = title
            self.message = message
            self.rating = rating
            self.elementId = elementId
        }
        
    }
}
//public struct ElementsModel: Codable, Identifiable {
//    public let id: String
//
//    public let name: String
//    public let type: String
//    public let address: String
//    public let shortDescription: String
//    public let goodToKnow: String
//    public let longitude: String
//    public let latitude: String
//    public let sumRating: String
//    public let comments: [Comment]
//
//    public init(id: String, name: String, type: String, address: String, shortDescription: String, goodToKnow: String, longitude: String, latitude: String, sumRating: String, comments: [Comment]) {
//        self.id = id
//        self.name = name
//        self.type = type
//        self.address = address
//        self.shortDescription = shortDescription
//        self.goodToKnow = goodToKnow
//        self.longitude = longitude
//        self.latitude = latitude
//        self.sumRating = sumRating
//        self.comments = comments
//    }
//
//    public func encode(to encoder: Encoder) throws {
//        var container = encoder.container(keyedBy: CodingKeys.self)
//        try container.encode(id, forKey: .id)
//        try container.encode(name, forKey: .name)
//        try container.encode(type, forKey: .type)
//        try container.encode(address, forKey: .address)
//        try container.encode(shortDescription, forKey: .shortDescription)
//        try container.encode(goodToKnow, forKey: .goodToKnow)
//        try container.encode(longitude, forKey: .longitude)
//        try container.encode(latitude, forKey: .latitude)
//        try container.encode(sumRating, forKey: .sumRating)
//        try container.encode(comments, forKey: .comments)
//    }
//
//    private enum CodingKeys: String, CodingKey {
//        case id
//        case name
//        case type
//        case address
//        case shortDescription
//        case goodToKnow
//        case longitude
//        case latitude
//        case sumRating
//        case comments
//    }
//}

//public struct Comment: Codable {
//    let elementId: String
//    let message: String
//    let title: String
//    let rating: String
//
//    public enum CodingKeys: String, CodingKey {
//        case elementId
//        case message
//        case title
//        case rating
//    }
//
//    public init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        elementId = try container.decode(String.self, forKey: .elementId)
//        message = try container.decode(String.self, forKey: .message)
//        title = try container.decode(String.self, forKey: .title)
//        rating = try container.decode(String.self, forKey: .rating)
//    }
//}





