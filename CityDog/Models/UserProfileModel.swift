import Foundation

struct UserProfileModel {
    let id: String
    let email: String
    let password: String
    let name: Name
    let dogs: [Dog]
    
}

struct Name {
    let firstName: String
    let middleName: String!
    let lastname: String
}

struct Dog {
    let id: String
    let name: String
    let breed: String
    let age: String
    let pictureURL: String
}
