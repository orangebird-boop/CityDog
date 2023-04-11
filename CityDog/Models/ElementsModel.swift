import Foundation

struct ElementsModel {
    let type: String
    let title: String
    let imageURL: String
    let id: String
    let adresse: String
    let postalCode: String
    let latitude: Double
    let long: Double
    let goodToKnow: [String]!
    let description: String
    let phoneNumber: String!
    let sumRating: Int
    let comments: Comments!
    
}

struct Comments {
    let title: String
    let text: String
    let rating: Int
}


