//
//  UserEntity+CoreDataProperties.swift
//  CityDogEntities
//
//  Created by Nora Lilla Matyassi on 02/05/2023.
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
    @NSManaged public var dog: NSSet?

}

// MARK: Generated accessors for dog
extension UserEntity {

    @objc(addDogObject:)
    @NSManaged public func addToDog(_ value: DogEntity)

    @objc(removeDogObject:)
    @NSManaged public func removeFromDog(_ value: DogEntity)

    @objc(addDog:)
    @NSManaged public func addToDog(_ values: NSSet)

    @objc(removeDog:)
    @NSManaged public func removeFromDog(_ values: NSSet)

}

extension UserEntity : Identifiable {

}
