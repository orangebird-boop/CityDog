//
//  UserEntity+CoreDataProperties.swift
//  CityDogEntities
//
//  Created by Nora Lilla Matyassi on 08/05/2023.
//
//

import Foundation
import CoreData


extension UserEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<UserEntity> {
        return NSFetchRequest<UserEntity>(entityName: "UserEntity")
    }

    @NSManaged public var email: String?
    @NSManaged public var firstName: String?
    @NSManaged public var id: String?
    @NSManaged public var lastName: String?
    @NSManaged public var password: String?
    @NSManaged public var dogs: NSSet?

}

// MARK: Generated accessors for dogs
extension UserEntity {

    @objc(addDogsObject:)
    @NSManaged public func addToDogs(_ value: DogEntity)

    @objc(removeDogsObject:)
    @NSManaged public func removeFromDogs(_ value: DogEntity)

    @objc(addDogs:)
    @NSManaged public func addToDogs(_ values: NSSet)

    @objc(removeDogs:)
    @NSManaged public func removeFromDogs(_ values: NSSet)

}

extension UserEntity : Identifiable {

}
