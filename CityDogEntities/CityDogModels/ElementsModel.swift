import Foundation

public struct ElementsModel {
    public init(type: String, title: String, imageURL: String, id: String, adresse: String, postalCode: String, latitude: Double, long: Double, goodToKnow: [String]? = nil, description: String, phoneNumber: String? = nil, sumRating: Int, comments: Comments? = nil) {
        self.type = type
        self.title = title
        self.imageURL = imageURL
        self.id = id
        self.adresse = adresse
        self.postalCode = postalCode
        self.latitude = latitude
        self.long = long
        self.goodToKnow = goodToKnow
        self.description = description
        self.phoneNumber = phoneNumber
        self.sumRating = sumRating
        self.comments = comments
    }
    
    public let type: String
    public let title: String
    public let imageURL: String
    public let id: String
    public let adresse: String
    public let postalCode: String
    public let latitude: Double
    public let long: Double
    public let goodToKnow: [String]?
    public let description: String
    public let phoneNumber: String?
    public let sumRating: Int
    public let comments: Comments?
    
}

public struct Comments {
    public init(title: String, text: String, rating: Int) {
        self.title = title
        self.text = text
        self.rating = rating
    }
    
    public let title: String
    public let text: String
    public let rating: Int
}
