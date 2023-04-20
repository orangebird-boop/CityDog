import Foundation

public struct UserProfileModel {
    public let id: String
    public let email: String
    public let password: String
    public let name: Name
    public let dogs: [Dog]
    
}

public struct Name {
    public let firstName: String
    public let middleName: String!
    public let lastname: String
}

public struct Dog {
    public let id: String
    public let name: String
    public let breed: String
    public let age: String
    public let pictureURL: String
}
