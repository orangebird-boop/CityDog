//
//  ElementEntity+CoreDataProperties.swift
//  CityDogEntities
//
//  Created by Nora Lilla Matyassi on 29/04/2023.
//
//

import Foundation
import CoreData


extension ElementEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ElementEntity> {
        return NSFetchRequest<ElementEntity>(entityName: "ElementEntity")
    }

    @NSManaged public var goodToKnow: String?
    @NSManaged public var gpsLocation: Double
    @NSManaged public var id: String?
    @NSManaged public var image: String?
    @NSManaged public var smallDescription: String?
    @NSManaged public var title: String?
    @NSManaged public var type: String?
    @NSManaged public var addresse: NSSet?
    @NSManaged public var comments: NSSet?

}

// MARK: Generated accessors for addresse
extension ElementEntity {

    @objc(addAddresseObject:)
    @NSManaged public func addToAddresse(_ value: AddressEntity)

    @objc(removeAddresseObject:)
    @NSManaged public func removeFromAddresse(_ value: AddressEntity)

    @objc(addAddresse:)
    @NSManaged public func addToAddresse(_ values: NSSet)

    @objc(removeAddresse:)
    @NSManaged public func removeFromAddresse(_ values: NSSet)

}

// MARK: Generated accessors for comments
extension ElementEntity {

    @objc(addCommentsObject:)
    @NSManaged public func addToComments(_ value: CommentEntity)

    @objc(removeCommentsObject:)
    @NSManaged public func removeFromComments(_ value: CommentEntity)

    @objc(addComments:)
    @NSManaged public func addToComments(_ values: NSSet)

    @objc(removeComments:)
    @NSManaged public func removeFromComments(_ values: NSSet)

}

extension ElementEntity : Identifiable {

}
